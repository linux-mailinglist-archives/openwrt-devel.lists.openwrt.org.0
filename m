Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B672E18C024
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 20:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6/ELJAvUIWKgGCXTY3pk98+BVWSEgWJWtskhRDMW3Vg=; b=UvSH7CPrLc71Zg
	kc6gysq5a18TqTWbkXlP7X8C4LmT5gn46gWl/ZzfvI56f41NdRMQcWL8GxdsJ/WMYdkJVM/wOStJ9
	rrlLu29wtL1vyUwdpF8ENCOR0zTPKK4byC3D0Qj9ndJLvzqToIkMF2cFBZP/xOAjsRyiIwgWk/E9e
	zqPsUN4BnfKS6IC4XfZoiXGMAIzI7+A416uY8G3EZaq3hLQDeh5lemh/332/Tz7ZPTDgpGk3UyqvM
	lBbNm3RtwwKSBgipLQdkhjs/zCmn/FBgzWHg4kMN95J6JXHcRsE8Mi7MUc5AVeekvOt1m+Lj7+wTh
	vc6u0jMaR9NcKcIE5qPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF0am-0003rQ-Vi; Thu, 19 Mar 2020 19:12:32 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF0ag-0003qy-LJ
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 19:12:27 +0000
Received: by mail-qk1-x733.google.com with SMTP id e11so4330196qkg.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Mar 2020 12:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gzxac8weC5K2IRR9J/Ff9Ta0++W8h4YnU+fijA+UFl4=;
 b=k5+yk6vD+VUtXniglS+0PJ5nlYupU0rVIMJ4Y3X6MSpbfabgfTtJAZ11d909oQDrJF
 ZoESTa6V1xrPopdvcu15M32HmcTt3s8IgJFKsdxPcuIB6gL/p3iVJAtxP5H8PjTliRqw
 bMDIxD/g8UFe3VdNZy7w+jRe8cl/4q1ZdUgCOh4OxhDDnczv8JW+v0KdzpoMTnjrZ7N/
 qL/B4EnCGPkQDCG532/D2Lfnlh84YFUP9t0SU/Z48FlKGxvtdzuTYNijqBaIkH+6z3q3
 XIJhXmz6iN0l/g9Pt014JJD5UWkNUe+g3HSs7Sn/cf1xOozVsasoe+g6W+FIOpxusJoi
 S/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gzxac8weC5K2IRR9J/Ff9Ta0++W8h4YnU+fijA+UFl4=;
 b=K5z1cWh5jowycQCmRqyDxcW6P7hPU47aRmJu9nHGVXJFGA8gIBcPrytHRa978+G7nH
 zrTNMIMS/KxRAhVwTeCZhGk6wDNS/gGeeVdXBAtavFX616234aWUEb5wCEItJFXZO71u
 7/oExiCa9la+CBYZ8HzuWVF9VQ1NqY09SMw/wXNU+zDeDFV0mkKsRfAt245ad2P7Qg+S
 j6OE+btkJmVVSGAWbJBT3KlpvA1HxklaNAg3KU3GLxE+YwqVFJ87AyWniSBwFOBNjivu
 i/kGUZ+E5QjtU2rU2yir9tA+pNz8GNw1E79BGKYa3J1A7T02HWKtueUdc3chKvZY0KmP
 XrTg==
X-Gm-Message-State: ANhLgQ0RZ2vXFpbU79ygNuVHG0hNnTlkj2Ugc7aKTb9OhXrE/CI0do7J
 qJ1oE6fx46/C23WDKGY6NqmpXH7Re2c=
X-Google-Smtp-Source: ADFU+vvDfCJ1VsnQiBeQRVLRwutlb2V2kIJJwZ11JID6NumuOjzQbbBqBt8ssKqhiN3w3xfzUHZzSQ==
X-Received: by 2002:a37:aa4c:: with SMTP id t73mr4553344qke.300.1584645144808; 
 Thu, 19 Mar 2020 12:12:24 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id w204sm2112481qkb.133.2020.03.19.12.12.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 12:12:24 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Mar 2020 16:12:13 -0300
Message-Id: <20200319191215.30710-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_121226_723508_D937098A 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:733 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 0/2] openssl: update to 1.1.1e
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This version includes bug and security fixes, including medium-severity
CVE-2019-1551, affecting RSA1024, RSA1536, DSA1024 & DH512 on x86_64.

Here's the current description of CVE-2019-1551:
  There is an overflow bug in the x64_64 Montgomery squaring procedure
  used in exponentiation with 512-bit moduli. No EC algorithms are
  affected. Analysis suggests that attacks against 2-prime RSA1024,
  3-prime RSA1536, and DSA1024 as a result of this defect would be very
  difficult to perform and are not believed likely. Attacks against
  DH512 are considered just feasible. However, for an attack the target
  would have to re-use the DH512 private key, which is not recommended
  anyway. Also applications directly using the low level API BN_mod_exp
  may be affected if they use BN_FLG_CONSTTIME. Fixed in OpenSSL 1.1.1e
  (Affected 1.1.1-1.1.1d). Fixed in OpenSSL 1.0.2u (Affected
  1.0.2-1.0.2t).

I've added a commit before the actual update to include cofiguration
help for the afalg-sync engine available in the packages feed.

This was tested on mvebu, using nginx, and the openssl util.

These patches should be cleanly cherry-picked to 19.07, so I won't send
a duplicate patch unless told otherwise.

Eneas U de Queiroz (2):
  openssl: add configuration example for afalg-sync
  openssl: update to 1.1.1e

 package/libs/openssl/Makefile                 |  6 +--
 .../150-openssl.cnf-add-engines-conf.patch    | 31 ++++++++++++-
 ...o-make-the-dev-crypto-engine-dynamic.patch | 43 ++++++-------------
 ...default-to-not-use-digests-in-engine.patch |  8 ++--
 ...to-ignore-error-when-closing-session.patch |  6 +--
 5 files changed, 52 insertions(+), 42 deletions(-)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
