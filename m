Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E34E4AC3
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 14:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Date:Content-Type:To
	:From:Message-ID:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eBgyDHbDtw+cWpzYcIwYaexAUkNdXneyI9STfSSGSTQ=; b=jK8pfRyv4XsKXRFnOK4whaTtKb
	zO1k8aBIjeb0AgqyeTBqlQEiLPxKPU6Yam8XbLoczJwS4Yhv480RGmI8NVS4Ax4fqErCZipgPKTMO
	ScXxQjfw+2TRna3ha0RY/nGJbKqqJR81keTHxTnLtu2J9LKqBsdRKA5O+kTeNutjsT9bvFmhOdz6s
	6k74aBatao89qGXxOCRWkWoFbi7LQnrykiSvvpjOBQSbqodkYI1Iw9qp+uDoQWvai2Wh4QAFZfEXX
	8TubBV91k15XLkYCCg7kdoiohXz4SG9nhprs6h1ltKRUOrTJX/ZRs/0QWkYkaEB+8pNewQGDJnert
	RuP3Jx9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyOr-0007yJ-71; Fri, 25 Oct 2019 12:09:01 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyOi-0007xf-Gc
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 12:08:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572005326;
 bh=hFKpIk74+9/tS39ZCYl9ArarSY7mVAkgn/qbJKWcFdk=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=iW8pIMotTI0pstusovI2iP2EcJWcsB8XTr/8EQPViuAmBRrZdN8nseMIEYvtvES1D
 DipntsQ5A99cfT9W3gKC1JQfP1+5zVhqswqHNHYgnby/fQ6eO75uDjrb9Wr7df/hpN
 8SyX0EuriNoUXFXSiPcOkyUjpbQv+qMEkUqH907Y=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [138.75.36.63] ([138.75.36.63]) by web-mail.gmx.net
 (3c-app-gmx-bap02.server.lan [172.19.172.72]) (via HTTP); Fri, 25 Oct 2019
 14:08:46 +0200
MIME-Version: 1.0
Message-ID: <trinity-91aee333-84d2-4c69-8705-792355c89cbd-1572005325986@3c-app-gmx-bap02>
From: alex1452@gmx.net
To: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed;
 boundary=kenitram-93060270-33cd-466c-a3ed-001c211172f6
Date: Fri, 25 Oct 2019 14:08:46 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:A+BU2DRjKMp/vgmKlH5PXWxgmOQmKuHchO9kgkQUkzMHNHWM5uqAEDpPcRyDJdL1rBGcy
 NmBzDmVhzSYtNfiTkao9xdbxapwS2Jp0fYcG58/T8/MR4+2B8Uk7CDLdZ+BM/DAo89UIzS4F6nOi
 QD/4oZjPYXBT0xcdlSoSTARFDtk1EP0lrNu5nKC3H5DxDH3Cz9GjIkQHSupsMcFAY2xqLJXYdVmu
 pSH6+mEQbkkGaQ89lzODlRMN18gPCQtLAAtN/a57UgbhiTTSKh79XVo8GhjXFL0OcdwGjCiXVLdT
 kg=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:huzolFx9tcA=:jB8Y4KpO9MD5Dvkh/F7GQs
 uOD/Tg9HAsnw1LYh19onpofkmSekmRRW3zNTqAJ+G/2TwkS1KLpqmB6+zImILR1xNTvlqnhtO
 /oZlGDS5EE36uuF2wIBUPabHJ+5HokHgpTdeAP0ilQxM+224GBSXvRHpZVrZOyscyG36tiQeV
 g7qyoZn1XfXhCL/TcpCBc3EZ2EwAUoaT249BmzZ5oY+TfLdpRfwkm7XF+ebLO+Efbnk7WJDRE
 Wig5+8ZFNjZd3M2eLIwgtxZZRb7FHFlwoT028TazG3VhGyIcxAFvi7UATPPeH1dYC9txg3gBI
 3sGL2C9Spdft1OVHG34z8YezZdH5Q4PF/zlAxD9QR7JkE+saA2MCaksU/Z3bzB96jCkk3owri
 gmGN4Psyf5umLchK2MLQb5iT5FSwN4uRaV2Cz/ZgLPnDc4JOOWuPTRUe8BO5Jj5yTqIvne0mW
 SXxnTIBxqB1bD9e8Rmx7dXz2M6TImSL+Eem+cc7XwpBNOabdVgncdEsZSfxGwnlQau4KtmC5Z
 mXdwWG0QZqCa21Mlqx7Zz3hILBZqzrQAIVpFNryfAeq6YtJ4u1aBx+uNrH5Ls3ZK6NbK4+75s
 0/0QFqhlwuDVL1GK+MmjjYN74J47GVAP57bYhx219/dg6L9OGnVICy+BI1UnJXUoIvNRP9fyD
 ZDc1RJB9QhWzW5MqTgxgCIWWD+gcxOd6wjFWvCAhQcx6AdQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_050852_894404_0A099037 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alex1452[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alex1452[at]gmx.net)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] procd: Increase zram memory allocated for tmpfs
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--kenitram-93060270-33cd-466c-a3ed-001c211172f6
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Dear all, dear John,</div>

<div>&nbsp;</div>

<div>
<p style="padding: 0; margin: 0;"><span style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">I have an issue with tmpfs on zram: according to this remark:</span></p>

<p style="padding: 0; margin: 0;"><span style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><a href="https://git.openwrt.org/?p=project/procd.git" rel="noreferrer noopener" target="_blank" title="https://git.openwrt.org/?p=project/procd.git
Click the link to open the URL in a new window.">https://git.openwrt.org/?p=project/procd.git</a>;a=commitdiff;h=7676df3226da5391c2dfda2ed29a40500e04e15b</span></p>

<p style="padding: 0; margin: 0;"><span style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">Nathan (incl. in CC of this email) has a hardcoded value for zram0 for tmp.</span></p>

<p style="padding: 0; margin: 0;">&nbsp;</p>

<p style="padding: 0; margin: 0;"><span style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">With inreasing RAM sizes for routers (mine has 4GB), could this be unnecessarily restrictive? For my use case (media and lan server) 16MB tmp drive is definitively too small. Ansuel&nbsp; has raised similar concerns about a year ago:</span></p>

<p style="padding: 0; margin: 0;">&nbsp;</p>

<p style="padding: 0; margin: 0;">https://bugs.openwrt.org/index.php?do=details&amp;task_id=1311&amp;string=zram&amp;search_name=&amp;type%5B0%5D=&amp;sev%5B0%5D=&amp;pri%5B0%5D=&amp;due%5B0%5D=&amp;reported%5B0%5D=&amp;cat%5B0%5D=&amp;status%5B0%5D=open&amp;percent%5B0%5D=&amp;opened=&amp;dev=&amp;closed=&amp;duedatefrom=&amp;duedateto=&amp;changedfrom=&amp;changedto=&amp;openedfrom=&amp;openedto=&amp;closedfrom=&amp;closedto</p>

<p style="padding: 0; margin: 0;">&nbsp;</p>

<p style="padding: 0; margin: 0;"><span style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">For almost a year, there seems to exist a patch in the bug tracker, that has no activities:</span></p>

<p style="padding: 0; margin: 0;"><span style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">FS#1943 - procd: Increase zram memory allocated for tmpfs</span></p>

<p style="padding: 0; margin: 0;">&nbsp;</p>

<p style="padding: 0; margin: 0;">https://bugs.openwrt.org/index.php?do=details&amp;task_id=1943&amp;string=zram&amp;search_name=&amp;type%5B0%5D=&amp;sev%5B0%5D=&amp;pri%5B0%5D=&amp;due%5B0%5D=&amp;reported%5B0%5D=&amp;cat%5B0%5D=&amp;status%5B0%5D=open&amp;percent%5B0%5D=&amp;opened=&amp;dev=&amp;closed=&amp;duedatefrom=&amp;duedateto=&amp;changedfrom=&amp;changedto=&amp;openedfrom=&amp;openedto=&amp;closedfrom=&amp;closedto</p>

<p style="padding: 0; margin: 0;">&nbsp;</p>

<p style="padding: 0; margin: 0;">For your convenience, I have included the patch as attachment. <span style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">Unfortunately, I am quite new to OpenWRT so I am not sure on the right approach to include this patch in my compile. </span></p>

<p style="padding: 0; margin: 0;">&nbsp;</p>

<p style="padding: 0; margin: 0;"><span style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">Therefore could I ask the following questions:</span></p>

<p style="padding: 0; margin: 0;"><span style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">1. Do you have changes to the RAM size (e.g. with the mentioned path) on your roadmap? If so, do you already have an approximate ETA?</span></p>

<p style="padding: 0; margin: 0;"><span style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">2. What are the rough steps to correctly include the mentioned path in the package for testing?</span></p>

<p style="padding: 0; margin: 0;">&nbsp;</p>
</div></div></body></html>
--kenitram-93060270-33cd-466c-a3ed-001c211172f6
Content-Type: application/octet-stream
Content-Disposition: attachment; filename=zram-size-policy-change.patch
Content-Transfer-Encoding: quoted-printable

diff --git a/initd/zram.c b/initd/zram.c
index b41bfd9..e8b1b50 100644
=2D-- a/initd/zram.c
+++ b/initd/zram.c
@@ -20,13 +20,13 @@
 #define ZRAM_MOD_PATH "/lib/modules/%s/zram.ko"
 #define EXT4_MOD_PATH "/lib/modules/%s/ext4.ko"

-static long
+static unsigned long
 proc_meminfo(void)
 {
 	FILE *fp;
 	char line[256];
 	char *key;
-	long val =3D KB(16);
+	long val =3D KB(8);

 	fp =3D fopen("/proc/meminfo", "r");
 	if (fp =3D=3D NULL) {
@@ -43,9 +43,6 @@ proc_meminfo(void)
 	}
 	fclose(fp);

-	if (val > KB(32))
-		val =3D KB(32);
-
 	return val;
 }

@@ -82,7 +79,7 @@ early_insmod(char *module)
 int
 mount_zram_on_tmp(void)
 {
-	char *mkfs[] =3D { "/usr/sbin/mkfs.ext4", "-b", "4096", "-F", "-L", "TEM=
P", "-m", "0", "/dev/zram0", NULL };
+	char *mkfs[] =3D { "/usr/sbin/mkfs.ext4", "-b", "4096", "-F", "-L", "TEM=
P", "-m", "0", "-O", "uninit_bg,sparse_super,^has_journal", "/dev/zram0", =
NULL };
 	FILE *fp;
 	long zramsize;
 	pid_t pid;
@@ -95,7 +92,17 @@ mount_zram_on_tmp(void)

 	mkdev("*", 0600);

-	zramsize =3D proc_meminfo() / 2;
+	zramsize =3D proc_meminfo();
+	//memory size >=3D 64M takes more memory, otherwise keep original policy=
.
+	//const value of memsize reduced a little to match real devices.
+	if(zramsize > 57UL*1000*1000){
+		zramsize /=3D 3;
+	}else if(zramsize > 28UL*1000*1000){
+		zramsize =3D KB(16);
+	}else{
+		zramsize /=3D 2;
+	}
+
 	fp =3D fopen("/sys/block/zram0/disksize", "r+");
 	if (fp =3D=3D NULL) {
 		ERROR("Can't open /sys/block/zram0/disksize: %m\n");
@@ -116,7 +123,7 @@ mount_zram_on_tmp(void)
 		waitpid(pid, NULL, 0);
 	}

-	ret =3D mount("/dev/zram0", "/tmp", "ext4", MS_NOSUID | MS_NODEV | MS_NO=
ATIME, "errors=3Dcontinue,noquota");
+	ret =3D mount("/dev/zram0", "/tmp", "ext4", MS_NOSUID | MS_NODEV | MS_NO=
ATIME, "errors=3Dcontinue,nobarrier");
 	if (ret < 0) {
 		ERROR("Can't mount /dev/zram0 on /tmp: %m\n");
 		return errno;

--kenitram-93060270-33cd-466c-a3ed-001c211172f6
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--kenitram-93060270-33cd-466c-a3ed-001c211172f6--


