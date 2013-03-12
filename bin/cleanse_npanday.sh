#!/bin/sh

gacutil /u NPanday.Model.Pom
gacutil /u NPanday.Plugin
gacutil /u NPanday.VisualStudio.ProjectWizard
rm -rf ~/.m2/repository/npanday* ~/.m2/npanday-settings.xml ~/.m2/uac ~/.m2/pab ~/.m2/repository/embedder_logs ~/.npanday ~/.m2/repository/org/apache/npanday ~/.m2/repository/memoryStore.data
