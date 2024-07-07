#!/bin/bash

# -----------------------------------------------------------------------------
# Easy!Appointments - Online Appointment Scheduler
#
# @package     EasyAppointments
# @author      A.Tselegidis <alextselegidis@gmail.com>
# @copyright   Copyright (c) Alex Tselegidis
# @license     https://opensource.org/licenses/GPL-3.0 - GPLv3
# @link        https://easyappointments.org
# -----------------------------------------------------------------------------

##
# Publish a docker image tag for an Easy!Appointments release.
#
# Usage:
#
#  ./publish.sh <version>
#
# Example:
#
#   ./publish.sh 1.5.0
#

DEFAULT_VERSION=1.5.0

VERSION="${1:-$DEFAULT_VERSION}"

docker tag easyappointments:$VERSION alextselegidis/easyappointments:$VERSION

docker push alextselegidis/easyappointments:$VERSION
