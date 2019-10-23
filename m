Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E41E12F1
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 09:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:To:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jHqPLDw0KS07rvo0mPAXsCiPRZo7KRb10iTVAy84biU=; b=qwiP2dLGbOyaSzt+gShrxwcx7b
	BZrbosYZ8GFg0hN1Z4PCQ113ktcXmx0pybE3YCiVCgXclXQo8pi1YiNoPeGxBL0MnfjY7hWRyyuXQ
	WETj9O6OuDaknGuV+N9ck1n5MuTR95Ra6SbTpBvYthDuRFPrDQNzNergpVGcihjEQWCGE5C2QG2wG
	tkO5yTWen/+uVyyTXjcJTp7FeccXs803AImDTHEDRVtA5ML/k8AZ6ZxlZz27vUtrPqHLOUSFsoFFT
	cyXiy/WbPxI1b9K0AWjOkGn8p55T6TPuXMnaWnIK72rwSXLVqvFxl9n+bLWUZ02Jq1AFegLRE+yBw
	Ni74UWgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNAtt-0003fK-7c; Wed, 23 Oct 2019 07:17:45 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNAtl-0003et-IT
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 07:17:38 +0000
Received: by mail-io1-xd2d.google.com with SMTP id i26so14366013iog.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 23 Oct 2019 00:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=7H1iySq8D+An6UQq8t+4/Tc6FZY9Z27pxbe+KL4ATdc=;
 b=TX9qVATFUg4Q8TvCRuK4sqxdw5bYXZc3zemzBAYBgvgHeCBekKUtYL52v/swCMfqyQ
 6+/GSfPejtxnmA8NCL+zxdeAE1IEOxQHcYVbI1GN4EUEwUJPqLP6atwNt4wfqvununac
 broyqM3rQn+RW68dlWYKfSQHvcJxq7dTSniQmVX4xQHxD6fESVpc1Nia6NxnfvomE6oI
 +YduJvoBcEEVNif7b0D1JU2R5bPDNVXc1T+fv8iRoSMwUbhlNVHRmdYUpRuvLS0MSA3Z
 h/2b8mDNF6GwP3tSwZzen6JEjs47NJ9JZfBnwJ+3Qti4nsG/6Ac3V4MF+0Hcivq2Q+ke
 DMpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=7H1iySq8D+An6UQq8t+4/Tc6FZY9Z27pxbe+KL4ATdc=;
 b=oz7rDdSsmraOb+8pFtOeCVOP+jNLXgV4jgDW2fLS1R4svhkPLrCmGZ5O0OvwA1Rck5
 Jx+PAN8ndJioAHxZXfAd9QLrd8ci0hkStw3Xs1TRbyFuvWfVXLARzVLuSlQSfmCLBvy+
 wBE2f7Nqfy5u5eHJKM3Xbu4B0Polw2a34OSfOSGON9L+zls9VKKGowOLqlVgH9U2atMH
 Ji+hH6kq1Lzx4SNqouGKx1nP2RvseFYVo8KhjGicD7nihLEmx1unm1UoRzo8Hmq9xM45
 Kjc+YR1NuK/uTChG6thVMCG7KeejXLxSH+d43GCQCvcBBuXBvUMwnkTlPUsk4wlN9rVS
 xLsg==
X-Gm-Message-State: APjAAAWPASJ02NLYCGYOlQ4zeqwnAu8BKkbvKrQGEJx5nDn/l7c3eM7a
 gJbsTx40Yw4qTHnyKv6TmuaWZKf62axd2I98n+y5WfDw
X-Google-Smtp-Source: APXvYqwCaPGFUvpkUVDvefqABUlmpEl4SCSL3Q7CJEkbaVkD8zpxq5OevpDWaF6Fy67NYalb3/SZ0M9HCotbJB3+VC4=
X-Received: by 2002:a02:2302:: with SMTP id u2mr8013098jau.70.1571815055996;
 Wed, 23 Oct 2019 00:17:35 -0700 (PDT)
MIME-Version: 1.0
From: Imran K <gururug@gmail.com>
Date: Wed, 23 Oct 2019 00:17:25 -0700
Message-ID: <CAA21KT_NnOgz5QekHL==iA1EAA_Ti7CavGPyrMDXV=6FzAiyhA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="000000000000121c8905958eb60f"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_001737_636786_CBFCF915 
X-CRM114-Status: UNSURE (   4.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gururug[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] leds.sh write error on setting trigger none
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

--000000000000121c8905958eb60f
Content-Type: multipart/alternative; boundary="000000000000121c8505958eb60d"

--000000000000121c8505958eb60d
Content-Type: text/plain; charset="UTF-8"

Fixes write error: Invalid argument in led_set_attr() when setting 'none'
value.

Regards

--000000000000121c8505958eb60d
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Fixes write error: Invalid argument in led_set_attr() when setting &#39;none&#39; value.<br><div><br></div><div>Regards</div></div>

--000000000000121c8505958eb60d--

--000000000000121c8905958eb60f
Content-Type: application/octet-stream; name=base-files-leds-fix
Content-Disposition: attachment; filename=base-files-leds-fix
Content-Transfer-Encoding: base64
Content-ID: <f_k22y2dtn0>
X-Attachment-Id: f_k22y2dtn0

LS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi9mdW5jdGlvbnMvbGVkcy5zaAorKysg
Yi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL2Z1bmN0aW9ucy9sZWRzLnNoCkBAIC0xNiw3
ICsxNiw3IEBAIGdldF9kdF9sZWQoKSB7CiB9CiAKIGxlZF9zZXRfYXR0cigpIHsKLQlbIC1mICIv
c3lzL2NsYXNzL2xlZHMvJDEvJDIiIF0gJiYgZWNobyAiJDMiID4gIi9zeXMvY2xhc3MvbGVkcy8k
MS8kMiIKKwlbIC1mICIvc3lzL2NsYXNzL2xlZHMvJDEvJDIiIF0gJiYgZWNobyAtbiAiJDMiID4g
Ii9zeXMvY2xhc3MvbGVkcy8kMS8kMiIKIH0KIAogbGVkX3RpbWVyKCkgewo=
--000000000000121c8905958eb60f
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--000000000000121c8905958eb60f--

