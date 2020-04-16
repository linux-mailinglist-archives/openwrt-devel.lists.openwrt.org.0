Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915481AB732
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 07:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YUL24TOLzRyWC5NRhi7q4ooC3FFMT3N27y25+U9jrbM=; b=LOF
	iYLlvAne+iYUyp/9x01VcE7ehY+2zHb7Lcu/oz/EB3SSXTaJ4NwF+EjoK24Hr3uSGj+3RZRjDxGMX
	cCe65d+/JkpLctjSDyv1h3AO3Xiex8H8bqLPxtX9In2VSdKYSFAbE9SrUwS7GEg8DfzY5iwBrAfuc
	//iSlDDsBQU3rxWnWNUUpIOWxcXdAoWV0k8wAoYlQ6g2RtUVOG3aeUCX18YetGzDUQXzxU/I7DfvS
	bY2DbfoxNcpEudLrjcV3QE4h9d16FFVeIL+ipBP8zY62Fu+ZGtTkjoS5FThuPc3myfk1fh0PXis7G
	XvfGZBbAzjxPzMbBnahK0XRU9xaVSdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOwzp-0003ns-VN; Thu, 16 Apr 2020 05:23:29 +0000
Date: Thu, 16 Apr 2020 00:23:11 -0500
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.4064.1587014606.2542.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] [PATCH] ipq806x: enable disk-activity LED trigger
Content-Type: multipart/mixed; boundary="===============7113616388445398960=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7113616388445398960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7113616388445398960==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-vs1-xe2b.google.com ([2607:f8b0:4864:20::e2b])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOwzk-0003na-Eb
	for openwrt-devel@lists.openwrt.org; Thu, 16 Apr 2020 05:23:25 +0000
Received: by mail-vs1-xe2b.google.com with SMTP id o3so1642726vsd.4
        for <openwrt-devel@lists.openwrt.org>; Wed, 15 Apr 2020 22:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ocpnUxTSiykgHanJr4wCeaWzDkMtDVahoknJxfr2qe4=;
        b=p09vDxJR7mnsKN2koUXV81R79Tjt8A8MJl0CglxNEkhSD2I66O1f3Ve+F5h2KqDGhq
         82kxna4xqApbKy1O7Oj9pD+pvw7sX9RJq6vbuQ29qJ4P4EbqAO5umZPrNIoSqtVElE1S
         UrNHbzbEyCrchXqYmWAHcSkIS9ibyRXkOZfnA2BCnkVuWU0g18EGvkmvz9QwyzF3YQdL
         fWG/5gxV2JaBr16nJvjMi/eAfzkvpbvDCAGeUBAND4tvb9iXFrjSsn8QvMVxIMAgkATA
         oOv8rLnbSANRnPKYL0kjh/5rWo0bLUQL9b6ne4tuHbJT2fNSO3JHvaQrELSxS0RVlB5Q
         i6Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ocpnUxTSiykgHanJr4wCeaWzDkMtDVahoknJxfr2qe4=;
        b=fQJ8xc7GWI8KH6iHM0FYPb9bxxiU42pFrxTpub+WSVcfhsDNQ0aRWrclP7mCmcBqPu
         KbnUyjZbMZiW/pGZH7+IMpn8GMSCuHuazX04NhJqxqrZvuaK5SxW5O6Cs4uD4AL+16OA
         Iryw7UYPtyBJLL6K8TayQkMrvoISOg4xDyqVvm/onuJiUNg2B7MH64Ub5/OxMYYxwzIS
         Y8Yq+Dcma27NEOYR+V3ezKY9QUJHJRFaPMr76Syyon+MofvE45UuBojXynVojFH1+qnF
         BvYyy28M4C+DA6xbQYIIMeRXnoKJQj7uOqSJ8mFPpdM4PPHgeZBMOpo/T65BIZHo0Mj6
         RJDw==
X-Gm-Message-State: AGi0PuZwqTfZQhYea0broiHl1qoFVP8S2fexyYToWlqp4a63KtFb9eJp
	SZue6+ral3z7rUs9w/RbpHiL3fEq0J3HgvBfk7CUAqpI
X-Google-Smtp-Source: APiQypKqz9KJuyprUcSCHlEWNdyan0yl+I+J4R/gsFNMJOC8SoXwjTGJxKIxZ2qUxBdcJKx6cEHqYJaa/O4eev+V/p8=
X-Received: by 2002:a67:1587:: with SMTP id 129mr7822043vsv.146.1587014603149;
 Wed, 15 Apr 2020 22:23:23 -0700 (PDT)
MIME-Version: 1.0
From: Thomas Albers <thomas.gameiro@googlemail.com>
Date: Thu, 16 Apr 2020 00:23:11 -0500
Message-ID: <CALYGOBVLz+2zVtsDM_jm0G+mzvpGSTtd=JOB0OdBVn1GFsejuw@mail.gmail.com>
Subject: [PATCH] ipq806x: enable disk-activity LED trigger
To: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_222324_488714_2497A086 
X-CRM114-Status: UNSURE (   5.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:e2b listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [thomas.gameiro[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

This changes the ide-disk LED trigger to the generic disk-activity
trigger and also enables the disk-activity LED trigger for ipq806x,
since this SoC has an onboard SATA controller.

This fixes the issue that for the Netgear R7800 the SATA LED is assigned
the ide-disk LED trigger, but no LED disk trigger support is compiled
in the kernel.

Signed-off by Thomas Albers <thomas.gameiro@googlemail.com>
---
--- a/package/base-files/files/lib/functions/uci-defaults.sh
+++ b/package/base-files/files/lib/functions/uci-defaults.sh
@@ -404,7 +404,7 @@ ucidef_set_led_gpio() {
 }

 ucidef_set_led_ide() {
-       _ucidef_set_led_trigger "$1" "$2" "$3" ide-disk
+       _ucidef_set_led_trigger "$1" "$2" "$3" disk-activity
 }

 ucidef_set_led_netdev() {
--- a/target/linux/ipq806x/config-4.19
+++ b/target/linux/ipq806x/config-4.19
@@ -259,6 +259,7 @@ CONFIG_KPSS_XCC=y
 CONFIG_KRAITCC=y
 CONFIG_KRAIT_CLOCKS=y
 CONFIG_KRAIT_L2_ACCESSORS=y
+CONFIG_LEDS_TRIGGER_DISK=y
 CONFIG_LIBFDT=y
 CONFIG_LOCK_DEBUGGING_SUPPORT=y
 CONFIG_LOCK_SPIN_ON_OWNER=y
--- a/target/linux/ipq806x/config-5.4
+++ b/target/linux/ipq806x/config-5.4
@@ -273,6 +273,7 @@ CONFIG_KPSS_XCC=y
 CONFIG_KRAITCC=y
 CONFIG_KRAIT_CLOCKS=y
 CONFIG_KRAIT_L2_ACCESSORS=y
+CONFIG_LEDS_TRIGGER_DISK=y
 CONFIG_LIBFDT=y
 CONFIG_LOCK_DEBUGGING_SUPPORT=y
 CONFIG_LOCK_SPIN_ON_OWNER=y


--===============7113616388445398960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7113616388445398960==--
