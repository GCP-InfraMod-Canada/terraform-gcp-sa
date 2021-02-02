resource "google_service_account" "terraform" {
  account_id   = var.sa_id
  display_name = var.sa_name
  project      = var.project_id
}

resource "google_project_iam_member" "sa-iam-role-bindings" {
  for_each = toset(var.sa_roles)
  project = var.project_id
  role    = each.key
  member  = "serviceAccount:${google_service_account.terraform.email}"
}
