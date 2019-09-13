Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A499AB284A
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 00:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PKWvIr/7sbe+P68GCJp7LEGLxesfuQpiLVeYckDynLs=; b=FoSWGlIMHpe1VN
	ftQ0FEcOmLrgpHrEXuvy0rhyPETHhJpr74ubpSULp+VHqbuaGU04GWvQgM4+Xjx0pTuSBy5oYdoQd
	JnMhAug8j65CDiZ9Ur6bHEpIKT4RN8oNiRIBHG1YE4lAnpoz5yuGHWE+OCpy7m/izcnDVjvCi2gTj
	UBLCutn7VcvQyxtS84NLPVJGpM5fZ0oBDLF92sXG2EkcQXpjUaYwcbXIEtzFUAcHfv0jMP43HJkhQ
	T/5a1IwGEaniyzWy0dIE1n4iaClubPPq2cjjGcFTqiDNx+2AIjIlFqrRuFqePe1PScvmMfoLK9q48
	DtSJmFemJqEuW4N+r9ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8tyB-00079A-7Q; Fri, 13 Sep 2019 22:23:11 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ty1-000780-9X
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 22:23:04 +0000
Received: from localhost.localdomain (unknown [213.175.92.61])
 by mail.pbx.lv (MailSystem) with ESMTPSA id CF7421A3834
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 01:22:54 +0300 (EEST)
From: Roman Yeryomin <roman@advem.lv>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Sat, 14 Sep 2019 01:22:48 +0300
Message-Id: <20190913222248.30764-1-roman@advem.lv>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_152301_518021_407A8022 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH] libubox,
 jshn: add option to write output to a file
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This would allow board_config_flush to run one command instead
of two and would be faster and safer than redirecting output
and moving a file between filesystems.

Originally discussed here:
http://lists.openwrt.org/pipermail/openwrt-devel/2017-December/010127.html

Signed-off-by: Roman Yeryomin <roman@advem.lv>
---
 jshn.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/jshn.c b/jshn.c
index 24e3265..0aa120c 100644
--- a/jshn.c
+++ b/jshn.c
@@ -275,7 +275,7 @@ out:
 	return obj;
 }
 
-static int jshn_format(bool no_newline, bool indent)
+static int jshn_format(bool no_newline, bool indent, FILE *stream)
 {
 	json_object *obj;
 	const char *output;
@@ -297,7 +297,7 @@ static int jshn_format(bool no_newline, bool indent)
 			goto out;
 		output = blobmsg_output;
 	}
-	fprintf(stdout, "%s%s", output, no_newline ? "" : "\n");
+	fprintf(stream, "%s%s", output, no_newline ? "" : "\n");
 	free(blobmsg_output);
 	ret = 0;
 
@@ -342,6 +342,7 @@ int main(int argc, char **argv)
 	int i;
 	int ch;
 	int fd;
+	FILE *fp = NULL;
 	struct stat sb;
 	char *fbuf;
 	int ret;
@@ -366,7 +367,7 @@ int main(int argc, char **argv)
 		avl_insert(&env_vars, &vars[i].avl);
 	}
 
-	while ((ch = getopt(argc, argv, "p:nir:R:w")) != -1) {
+	while ((ch = getopt(argc, argv, "p:nir:R:o:w")) != -1) {
 		switch(ch) {
 		case 'p':
 			var_prefix = optarg;
@@ -400,7 +401,16 @@ int main(int argc, char **argv)
 			close(fd);
 			return ret;
 		case 'w':
-			return jshn_format(no_newline, indent);
+			return jshn_format(no_newline, indent, stdout);
+		case 'o':
+			fp = fopen(optarg, "w");
+			if (!fp) {
+				fprintf(stderr, "Error opening %s\n", optarg);
+				return 3;
+			}
+			jshn_format(no_newline, indent, fp);
+			fclose(fp);
+			return 0;
 		case 'n':
 			no_newline = true;
 			break;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
