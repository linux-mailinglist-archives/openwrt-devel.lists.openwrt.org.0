Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00490F3BCE
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 23:55:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gEgXpx4Ir3untJF1im22ltop4ivbyamW+oMos1d3bmo=; b=RdY30rzC1z70Pr
	Cuoevg8BjbkKYQxW/4a+3iVCvQz6JypxjygoiSSrRdyu724TuvQ7Hiq41NOnH6EB8uwwFfkjaK55q
	+RXdDJY4x2XWFg1OI3foIC9tXLYFE334VY6kbCDYCJn/DdFcFGIK+MavABf8kUJMCrix17nVBXMaJ
	9BKnRThkX6r7iW89fQeo0Zbx4eGcu2jkjHDengEIA9yR2VA48ObgkyelA7qKOGRvFWvW/jlE7ZQY9
	JRW6A4kpXrS3ASkovuHK4PHdySjAkJH/Ncge27AEs9QFIHvZWJHWhf8UbEsJpkpmEJh5KQyhsKA9L
	fhtcA3S1lT9EihPt67wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSqgU-0008HS-EX; Thu, 07 Nov 2019 22:55:22 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSqgL-0008GK-BT
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 22:55:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id az9so1789216plb.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 07 Nov 2019 14:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wt0FC6zhUFpFxu3oH+2zguQEVk3cz+DGnaddC96rBUY=;
 b=jy1/Oct9fPw4ElownOQaBwQjHn/T+A7aOoxlfEoXDeeI0wI8YgxsqbldRpYQskOo0r
 OfuPnUu8TPXL0ldbrqiNxCq24nYV8rhd6oVfU7j4G6hW+IeAmnJtBXYype2OFUqjC4oE
 R4XNEuPj+6Pyewje4DI3rby9NQbJX8ii+dmBrBPPI+kliiJqmPnpY5QvCX4jc5s7P2Ao
 LVtfyIoW9vpae7B/L1B0pWBZaYY75+6ztZanROJe31v7BD9XETelPbPRdaUFLQrYFqeU
 5rHEsEtMYCkYMGObDhZfZrhYjxfxkonW/vNn9aweIJq7Mb3+Dh1sp7sYmucYI4PHTYgE
 32Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wt0FC6zhUFpFxu3oH+2zguQEVk3cz+DGnaddC96rBUY=;
 b=EqA5y/iLuDYMTKuMhtGwK9ide5L2qqtnhovEfQ2FdCP9J8c+lrxAcuxF32uCnWmDub
 z6Iz94fqDB45bw/SdWLLvIDIMaUyIGWRA4mCHWWXBoYG73gyfQ/OpFUdfdgoWcKcbV66
 lwqjx/ZRhc5URZ6bkVcgvtzhDT3SIBD86GmOfXLtEzdnEx/IofflRxc1iPydWI8I+fhd
 KEs0x2IIdmAxqoRApGab6K7eIN9ETmOymgUUTakjjHUHXMg+/zPnwJd/6EJzqAw6tanq
 sPlZLqfp3ZIdTbwQdLato6qS5nKhsfpX+UqWM20YJoG2js1F6ZoTr8ZlGSFIZJF5tZV7
 8pIw==
X-Gm-Message-State: APjAAAWEQ1YLU5o2rgLGkiUJyKoB1/k+J4vu3kpKonW+b1xHE96sCY7d
 XfUwEhNcC0pi6rRFfTkf67q6C0epp6k=
X-Google-Smtp-Source: APXvYqyC7abaWQqf37UXQMNNY+Q7fO+DEH2aQ0ndhLiKOGWEj0PEuBTiVKw6Xw24TIN3j11SwKciNw==
X-Received: by 2002:a17:90a:6a0f:: with SMTP id
 t15mr8795629pjj.48.1573167311706; 
 Thu, 07 Nov 2019 14:55:11 -0800 (PST)
Received: from localhost.localdomain (astound-69-42-2-23.ca.astound.net.
 [69.42.2.23])
 by smtp.gmail.com with ESMTPSA id r33sm3235070pjb.5.2019.11.07.14.55.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 14:55:11 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  7 Nov 2019 14:55:10 -0800
Message-Id: <20191107225510.32880-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_145513_417413_C4E5158C 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] xfsprogs: Fix compilation with newer musl
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

Backported upstream patch.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/xfsprogs/Makefile               |  2 +-
 .../patches/140-copy-file-range.patch         | 50 +++++++++++++++++++
 2 files changed, 51 insertions(+), 1 deletion(-)
 create mode 100644 package/utils/xfsprogs/patches/140-copy-file-range.patch

diff --git a/package/utils/xfsprogs/Makefile b/package/utils/xfsprogs/Makefile
index 353773840a..f717185bb6 100644
--- a/package/utils/xfsprogs/Makefile
+++ b/package/utils/xfsprogs/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=xfsprogs
 PKG_CPE_ID:=cpe:/a:sgi:xfsprogs
-PKG_RELEASE:=3
+PKG_RELEASE:=4
 PKG_VERSION:=4.11.0
 PKG_SOURCE_URL:=@KERNEL/linux/utils/fs/xfs/xfsprogs
 PKG_HASH:=c3a6d87b564d7738243c507df82276bed982265e345363a95f2c764e8a5f5bb2
diff --git a/package/utils/xfsprogs/patches/140-copy-file-range.patch b/package/utils/xfsprogs/patches/140-copy-file-range.patch
new file mode 100644
index 0000000000..e3547bb67e
--- /dev/null
+++ b/package/utils/xfsprogs/patches/140-copy-file-range.patch
@@ -0,0 +1,50 @@
+From 8041435de7ed028a27ecca64302945ad455c69a6 Mon Sep 17 00:00:00 2001
+From: "Darrick J. Wong" <darrick.wong@oracle.com>
+Date: Mon, 5 Feb 2018 14:38:02 -0600
+Subject: [PATCH] xfs_io: fix copy_file_range symbol name collision
+
+glibc 2.27 has a copy_file_range wrapper, so we need to change our
+internal function out of the way to avoid compiler warnings.
+
+Reported-by: fredrik@crux.nu
+Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
+Reviewed-by: Eric Sandeen <sandeen@redhat.com>
+Signed-off-by: Eric Sandeen <sandeen@sandeen.net>
+---
+ io/copy_file_range.c | 11 ++++++++---
+ 1 file changed, 8 insertions(+), 3 deletions(-)
+
+diff --git a/io/copy_file_range.c b/io/copy_file_range.c
+index d1dfc5a5..99fba20a 100644
+--- a/io/copy_file_range.c
++++ b/io/copy_file_range.c
+@@ -42,13 +42,18 @@ copy_range_help(void)
+ "));
+ }
+ 
++/*
++ * Issue a raw copy_file_range syscall; for our test program we don't want the
++ * glibc buffered copy fallback.
++ */
+ static loff_t
+-copy_file_range(int fd, loff_t *src, loff_t *dst, size_t len)
++copy_file_range_cmd(int fd, loff_t *src, loff_t *dst, size_t len)
+ {
+ 	loff_t ret;
+ 
+ 	do {
+-		ret = syscall(__NR_copy_file_range, fd, src, file->fd, dst, len, 0);
++		ret = syscall(__NR_copy_file_range, fd, src, file->fd, dst,
++				len, 0);
+ 		if (ret == -1) {
+ 			perror("copy_range");
+ 			return errno;
+@@ -130,7 +135,7 @@ copy_range_f(int argc, char **argv)
+ 		copy_dst_truncate();
+ 	}
+ 
+-	ret = copy_file_range(fd, &src, &dst, len);
++	ret = copy_file_range_cmd(fd, &src, &dst, len);
+ 	close(fd);
+ 	return ret;
+ }
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
