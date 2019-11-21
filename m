Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC99C1056FB
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:25:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7Od9G5gRekd47zZAVy/wWsRpKuKjhvOqHmmSXTkSeU=; b=qDY4pq2xKnjffX
	AEOPlS1cncOcf4dpZCPHX0QAZr4F8aIF/WvoxTfdN/tTNkMbCrTLCptmiR6X3dSftfjs2juGXKqbs
	5EovPu7T9ZWXFgmNW/ypwVIfWa58w1/v2z/tGa3O99EiJwP4N5tK2B3zw6NNskiQQSeHuFhLOUFWO
	T4mYT3iyzflsZPCQE3j/ErGTVLXcts0bEUY3IVkxiWbP3g/GQKdthLxv8YuQ+RAWl5cJ/nCqCogyy
	y4S5lIRU0WUH5s+wSNymsPryYHkIWy4ZVvuuJwnuAkx/t/4nhs9aU1ROd5qXkeYoTh6xbBBqNRQd8
	3/pEB5mscciaSvtHxpRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpGT-000461-7y; Thu, 21 Nov 2019 16:25:05 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF2-0002nL-J9
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:40 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 3D4161BF208;
 Thu, 21 Nov 2019 16:23:28 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:16 +0100
Message-Id: <20191121162322.671035-7-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082336_771006_A7B27F25 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 06/12] scripts/mkits.sh: extend with -s
 option to include a U-Boot script
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The mkits.sh prepares a .its file describing a FIT image. This commit
extends it to support a -s option, that allows to pass a file that
should be embedded as a U-Boot script in the FIT image.

This will be used as part of the dm-verity integration to add in the
FIT image a U-Boot script that provides the details of the dm-verity
volume (salt, root hash, number of data blocks, start of hash blocks,
etc.).

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 scripts/mkits.sh | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/scripts/mkits.sh b/scripts/mkits.sh
index 93c8cedaed..ce14f664d6 100755
--- a/scripts/mkits.sh
+++ b/scripts/mkits.sh
@@ -16,7 +16,8 @@
 
 usage() {
 	echo "Usage: `basename $0` -A arch -C comp -a addr -e entry" \
-		"-v version -k kernel [-D name -d dtb] -o its_file"
+		"-v version -k kernel [-D name -d dtb] -o its_file" \
+		"-s script"
 	echo -e "\t-A ==> set architecture to 'arch'"
 	echo -e "\t-C ==> set compression type 'comp'"
 	echo -e "\t-c ==> set config name 'config'"
@@ -27,10 +28,11 @@ usage() {
 	echo -e "\t-D ==> human friendly Device Tree Blob 'name'"
 	echo -e "\t-d ==> include Device Tree Blob 'dtb'"
 	echo -e "\t-o ==> create output file 'its_file'"
+	echo -e "\t-s ==> include U-Boot script 'script'"
 	exit 1
 }
 
-while getopts ":A:a:c:C:D:d:e:k:o:v:" OPTION
+while getopts ":A:a:c:C:D:d:e:k:o:s:v:" OPTION
 do
 	case $OPTION in
 		A ) ARCH=$OPTARG;;
@@ -42,6 +44,7 @@ do
 		e ) ENTRY_ADDR=$OPTARG;;
 		k ) KERNEL=$OPTARG;;
 		o ) OUTPUT=$OPTARG;;
+		s ) SCRIPT=$OPTARG;;
 		v ) VERSION=$OPTARG;;
 		* ) echo "Invalid option passed to '$0' (options:$@)"
 		usage;;
@@ -77,6 +80,18 @@ if [ -n "${DTB}" ]; then
 	FDT_PROP="fdt = \"fdt@1\";"
 fi
 
+# Conditionally create script information
+if [ -n "${SCRIPT}" ]; then
+	SCRIPT="
+		script {
+			description = \"Script\";
+			data = /incbin/(\"${SCRIPT}\");
+			type = \"script\";
+			compression = \"none\";
+		};
+"
+fi
+
 # Create a default, fully populated DTS file
 DATA="/dts-v1/;
 
@@ -102,6 +117,9 @@ DATA="/dts-v1/;
 			};
 		};
 ${FDT_NODE}
+
+${SCRIPT}
+
 	};
 
 	configurations {
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
