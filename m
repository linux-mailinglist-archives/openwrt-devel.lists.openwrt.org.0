Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D1C841CC
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 03:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mh7oFuOe/hcDSww8RQj1tq8dZtflDngWZFfYJJs+T/c=; b=d7M
	OWFjxCk1Kf6UR8fGGQQ5GUDtra8wQIjbJ0/+H+72jUcfuzMp0redxTPHFDQu3az/W/O4Bf3SA3EM+
	f3koKmSabiFk6GlumLZO/7BBK93wSmawxIkBvXiSiXIFY0NYHCR0yLhQbP4MbaA5+n+Z6ZgYMHbwo
	5JyqjJXP/oT2IQkk58HWt/hsm32+256Tm060qYRK7HxuV1GsE/uHCiID9PaSsQOKO5YYbz5MSiZ+r
	HzNnHJ1OEq6SucQ3VDpG98NSgeox7npKdvTFItKZfcGmApaQrLjEJW9TjBiFA4XT8o8KWrPsPrU9+
	wC0h07JJq7Vob+cc+FnF5c7uckBZ+xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvB41-0002Ly-T1; Wed, 07 Aug 2019 01:48:29 +0000
Date: Tue, 6 Aug 2019 20:48:07 -0500
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.15111.1565142502.19300.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] [PATCH 1/2] fix make kernel_menuconfig
Content-Type: multipart/mixed; boundary="===============3910902759104000440=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3910902759104000440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3910902759104000440==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hvB3s-0002LZ-DZ
	for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 01:48:21 +0000
Received: by mail-vs1-xe44.google.com with SMTP id v129so59623653vsb.11
        for <openwrt-devel@lists.openwrt.org>; Tue, 06 Aug 2019 18:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=lBHQEC5VCy2/3HKMMeLDfXwYhwz1BynFDCPkG6isy1k=;
        b=KGcbhygsXfaQoN6GiF4NaaPt0zfIk0tMcRfLRaZmvi0Jwl7oCkjZRp4W8HDgyjUnYo
         JqRHgZPHxc1TfY4rOOlgj+tSkBfagagrkU1bT3aVfQQasONTrF0qBOBRgJ1VfZiP9zYo
         RnAx8vBjosqlMD8Xsc+3slHYBUolIEo6a4SC3JM8ZJ/WNzkEzR3SnsVjwsRKdx/Fbpje
         xNBKMD1huYCIU+zLyNUJ2G3/oObjltb/XK/OhrVGugM6MdEWd1zBg4gmaYgWKRh9KH6Z
         Zvmn7LoB1C5brMK6qFAyPdkFUOu6OSeJxpq0Pjdp1ln+RK/Y95FA8RH94zVva1/1kaYG
         sFiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lBHQEC5VCy2/3HKMMeLDfXwYhwz1BynFDCPkG6isy1k=;
        b=IvGmwLQNyKiZwu1GP0MwV6l8Ah059QZ8k0EeEI3Y+DLvrAUA2bfjmIZOevWHgqycMe
         cE8ZWVPJn2MEXQBY6E9J78gQ45qXRDoKBAO2RS4kJ0n61b4/v/GbTB8Vi2wjueMG5cg5
         o2ljWEuyQGXZ34c0/z0oh7L4X36L11LbUYFTA0vON3FXucDCvY9AO6dUxD2U7Dc9Mkt1
         /3fBoaLH/DeSMIqBaptSWp3yGF2v/YytAlQ0S63+7/ndrJsDaujE6vVcLRPAA8U3U6qZ
         C7uYBl1EwdDKBKzXyZZVZIUaKMrGG0oK150aHPdDk6oJTEDYsNE+FvYRIYkozMc44t5q
         wkDQ==
X-Gm-Message-State: APjAAAVYMl/DZOE1ecdzehQTq1Fbmi6DICk3uEjVvt3sPhRqLwuSP/bV
	KaQWufhDwzm32wWJj3pv/hSyPgalDRpwfd25NDgAuQj++RI=
X-Google-Smtp-Source: APXvYqy4glIPq5y5ys65OF5RoX2UqE7ZN/71Dy4S+AgwwpwJoZOcZTfZ8qde6PkYCldCxoxs6FpiqOmYGM6KqhfOtak=
X-Received: by 2002:a67:eb12:: with SMTP id a18mr4460899vso.119.1565142498381;
 Tue, 06 Aug 2019 18:48:18 -0700 (PDT)
MIME-Version: 1.0
From: Thomas Albers <thomas.gameiro@googlemail.com>
Date: Tue, 6 Aug 2019 20:48:07 -0500
Message-ID: <CALYGOBU51HmRrwJGmYUxhcYJCg8OOSEUOo+7=T-nuJLk9XnSmQ@mail.gmail.com>
Subject: [PATCH 1/2] fix make kernel_menuconfig
To: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_184820_479485_1C2CFE12 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:e44 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (thomas.gameiro[at]googlemail.com)
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hello!

This is part 1 of a patch to fix issue 2423 in Flyspray,
kernel_menuconfig not working. This is not an upstream bug, it is due
to the toolchain missing ncurses. make menuconfig relies on the
/system's/ installation of ncurses, but make kernel_menuconfig invokes
the /toolchain's/ ncurses. ncurses is missing, consequently the
kconfig script can't be linked against it.

This fixes pkg-config in the toolchain. Previously, pkg-config would
expand an environment variable $STAGING_PREFIX, which is not defined,
consequently the attempts variable assignmetn would cause pkg-config
to fail with an error. Right now, anything relying on pkg-config works
only because of sensible defaults and good fortune.

Signed-off-by: Thomas Albers <thomas.gameiro@gmail.com>

diff --git a/tools/pkg-config/files/pkg-config
b/tools/pkg-config/files/pkg-config
index 82cc74ffcb..b36a8c62f5 100755
--- a/tools/pkg-config/files/pkg-config
+++ b/tools/pkg-config/files/pkg-config
@@ -1,3 +1,3 @@
 #!/bin/sh

-pkg-config.real --define-variable=prefix=${STAGING_PREFIX}
--define-variable=exec_prefix=${STAGING_PREFIX}
--define-variable=bindir=${STAGING_PREFIX}/bin $@
+pkg-config.real --define-variable=prefix=${STAGING_DIR_HOST}
--define-variable=exec_prefix=${STAGING_DIR_HOST}
--define-variable=bindir=${STAGING_DIR_HOST}/bin $@


--===============3910902759104000440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3910902759104000440==--
