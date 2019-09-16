Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827B5B4450
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 00:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TmA5Gm5DLUcf+DyWBH2tfIxgUCca+WNJeha7CCr0qZY=; b=ImC
	qw8o7pqhkYsukE7femnH571l3hMkvDyOAJdWtgkoNAcXe4BtN7qypglcvlWXS4iDXvor3LeLNsu+Q
	HZg386bReWJfAheKAhUMlrBiFtCjAGGwqMTABAnrnUJuCzObNV2rPsjAaQHfv38QRqrEokVhUGwmQ
	AIJ5N2c8y+vE/+xCkOPlXzPCrfYsH4likF3VsoljvgFVGtHco3QGY7jr1URgoJ9IhVHi19jkGa9H5
	qC0QyBkR2Sz4cNscjsNoCZKiwVjAgDLMJVpigQFUWY+SceFIHO4kof5KsJnX/DPEgsS3KZ/mjXdp/
	/VLr1UDC8qLdkaqVe2tCY9Vyp4fJ1GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9zuY-0005V0-Fp; Mon, 16 Sep 2019 22:55:58 +0000
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Sep 2019 17:55:42 -0500
MIME-Version: 1.0
Message-ID: <mailman.25186.1568674551.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Thomas Albers via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Thomas Albers <thomas.gameiro@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] build: fix make kernel_menuconfig
Content-Type: multipart/mixed; boundary="===============8884485580151244070=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8884485580151244070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8884485580151244070==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
	by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9zuN-0005Ua-H4
	for openwrt-devel@lists.openwrt.org; Mon, 16 Sep 2019 22:55:50 +0000
Received: by mail-yw1-xc43.google.com with SMTP id u65so482781ywe.4
        for <openwrt-devel@lists.openwrt.org>; Mon, 16 Sep 2019 15:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=SKy+655snU9byw1yJYvDHh/TeF1qy5DAG2K/dY8sTQk=;
        b=XrYuVMKwCIYjrhWAzwJhC7VcJBX723KpCRoBooELH9T8P2vl5KoJF8/LgEeh+ZCuke
         CtiE3GwNTe+6bnv6Zt65WehMzT151FkVw3/p5FH05AaFdC8RNoZgat80+YwKAppBufsx
         qMF8vPkQ2KkD8+OsL3r1jMyVjENyY4p7Kccxcsb6VRI0gsNqx5yX234oSiBoo6Br0jnS
         nQrH6+F4+MqGEX8004l/ftv6zzg95kSzW1c4vDNTJLpFC/VWy8NYwCC6WR5dQguKesty
         SEFLs0jHw8+QOAJm/xCkzoXUGx9kFybIlvb1ju0uQ4oRRdmUzNnRTZthclf+ZCWRvFgr
         XozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=SKy+655snU9byw1yJYvDHh/TeF1qy5DAG2K/dY8sTQk=;
        b=jQwE9qjC8dyeewOMkrtrPkWw/dYn2hGSPSLZzW0xmCWXUgKqT1Nk39o809rkKkJJNp
         YghhpbNPks/ayMIVbY10d8vA/TG5pduh52WY2YnmkixIbIldWkNvqiScdKA9/F+xqRGY
         HXb9AcirM6l3Lo85quxwul2/OrYdq114EbuFTwiZIy6fGSwWw5BZ+yfIiC+YhXrAa7V2
         DKlrl2FVcEfFgJvO2EoyYIBeu2K4O5CNPjjZGZtorZNHv0U3+B+40/jXlHZ7qAwdcTQd
         K7RuOjezBK7/JBCZgTF9y+aOFWwrXfWSCUIKwaCKln6LEIqzW4ctWU2qBmomErXfSnOi
         qX1g==
X-Gm-Message-State: APjAAAVjKG7GOWvUmDk/0fiTD6vXPznmdGmQlMI5+PupOyWIBkTmA+gD
	JLPquISYW0Tficcbb4Yf0zn54Ttu
X-Google-Smtp-Source: APXvYqweD3tPOaRK0QyguOpdlRPHYbpuWPU7S+lEW27cnz0ZdjGeH7rKEvkR+mWmIP45cc9dMrDzRw==
X-Received: by 2002:a81:245:: with SMTP id 66mr376919ywc.300.1568674543188;
        Mon, 16 Sep 2019 15:55:43 -0700 (PDT)
Received: from localhost ([216.93.131.136])
        by smtp.gmail.com with ESMTPSA id l74sm40433ywe.88.2019.09.16.15.55.42
        for <openwrt-devel@lists.openwrt.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 15:55:42 -0700 (PDT)
Received: (nullmailer pid 22374 invoked by uid 1000);
	Mon, 16 Sep 2019 22:55:42 -0000
From: Thomas Albers <thomas.gameiro@googlemail.com>
To: openwrt-devel@lists.openwrt.org
Subject: [PATCH] build: fix make kernel_menuconfig
Date: Mon, 16 Sep 2019 17:55:42 -0500
Message-Id: <1568674542.294074.22373.nullmailer@localhost.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_155547_593986_86770695 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:c43 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (thomas.gameiro[at]googlemail.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Use system pkg-config instead of toolchain pkg-config when the kernel 
config scripts are compiled (see FS#2423)

Signed-off-by: Thomas Albers <thomas.gameiro@googlemail.com>
---
 Makefile                          | 1 +
 tools/pkg-config/files/pkg-config | 6 +++++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 5301883061..7bfc34e002 100644
--- a/Makefile
+++ b/Makefile
@@ -18,6 +18,7 @@ $(if $(findstring $(space),$(TOPDIR)),$(error ERROR: The path to the OpenWrt dir
 
 world:
 
+export SYSTEM_PKG_CONFIG:=$(shell which pkg-config)
 export PATH:=$(TOPDIR)/staging_dir/host/bin:$(PATH)
 
 ifneq ($(OPENWRT_BUILD),1)
diff --git a/tools/pkg-config/files/pkg-config b/tools/pkg-config/files/pkg-config
index 82cc74ffcb..00243e663e 100755
--- a/tools/pkg-config/files/pkg-config
+++ b/tools/pkg-config/files/pkg-config
@@ -1,3 +1,7 @@
 #!/bin/sh
 
-pkg-config.real --define-variable=prefix=${STAGING_PREFIX} --define-variable=exec_prefix=${STAGING_PREFIX} --define-variable=bindir=${STAGING_PREFIX}/bin $@
+if [ -n "${STAGING_PREFIX}" ]; then
+	pkg-config.real --define-variable=prefix=${STAGING_PREFIX} --define-variable=exec_prefix=${STAGING_PREFIX} --define-variable=bindir=${STAGING_PREFIX}/bin $@
+else
+	${SYSTEM_PKG_CONFIG} $@
+fi
-- 
2.21.0



--===============8884485580151244070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8884485580151244070==--
