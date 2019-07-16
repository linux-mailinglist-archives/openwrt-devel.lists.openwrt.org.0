Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3686A0F7
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jul 2019 05:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GM5AAiWYhsUy2Bt9ie9Ir+29VsynVDaYeY/iPYnS+ZM=; b=qDCJ1oRzKg3jaK
	1wglNWDa7JmQIdRmA4x+nxHw70z2Y30A1MBweadJ01tuTHmGz9G+dHvkm0bTQy9ahAnr2iUxqfRYA
	blRGTwPx5i68gemonX5vZAsA5waPcPK6E64s7tbonQEVe2c/of/0qF0FH9F1H/WZyWspJqjo6oK1G
	AcYPvB1pNRFsFbwKIXnfSFoj9wnMJFqfKQyD5bHErsrpVZBbGykZNjx2rw70WNS5w3FBulMBkJU/u
	H/7tzKjmPYb3okiPucikMR+FOSvB9aki9ky2ZkCLCJjMJL1ZflOISwKKVNSKMpEh1X8CHE3HAoykz
	l8NTGM7/gCuBT8mnpxHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnETm-0001D1-Vq; Tue, 16 Jul 2019 03:50:15 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnETY-0000tw-Ve
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jul 2019 03:50:03 +0000
Received: by mail-oi1-x244.google.com with SMTP id w196so14444342oie.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jul 2019 20:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lmzC7qTh0Vt62ois1hrbtTOG17mGqqk6xShh1OYM9Ko=;
 b=BcUyum8kKO8i3bMmblrmhrr6FRW6YluYgNb78UkvNqnUUnn+aQuPAa81WUeooadT6o
 HfgYjLn/Fzc0lo5rShv9i1INdHSv6hGGCpDLuMO2g7DfX4fwIeIl0KNfDOViK0dZzvCW
 7eCvLgWQO0lMrhLHPI8okwzQw/6985d4GQd+DRfheqQ7F/yCsGY+AKnwdqvbNhBjvJGL
 XpdXjgNbVO2iqjPRXSiOAZOpwWfVGsps+MqiYGEsU2MZAwqYkc/PaPJBzbxnZq0fupIQ
 IgQmBBvg+SSbEn6I4S1c0ZWcgXB/rOtnP8sz5kNJt0BgGM+hKAjAOlYmJvYk8Qzj3cMe
 eK9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lmzC7qTh0Vt62ois1hrbtTOG17mGqqk6xShh1OYM9Ko=;
 b=NXXRQFVMT4Yr0Va3zgPMhM+MvTW2qoOYw9YFJt+ZS7UpDKJzwXBsu31+Wphn3qAPsL
 +jNukJWcNz8DiPdo84nnJDyXA3UdJAl7F4DogxNuf1m1YoG+JcqksSLML8/rAYjlwShV
 zlGmRzGJFkJwszo05TsPLNHsaFGvl0XTH//0NYfzuD/3EfHPcrxPEnraz8oEk1JySM6p
 wZFPxMvJNU8KNHcTi1Q7dsh0Buv7IXMGzNJm2FBm9lEWAgY8Q5570RjboT/UkAFbgmjy
 LMS5qPefk+i9r7tLiijbyQUwrwEHoeLQuaDA3hst+hekSsCXlE9U+GAyg6cvRQUti4qT
 oVaQ==
X-Gm-Message-State: APjAAAW39Rbr51rxwaaB12OGmXQ05t3QTL9D1D0bootib4P2Zy7v6DAi
 XtUAFh2mkAtDlk0RPLUhvteoOzb+LT8n/KmaEOPY8BEhlSo=
X-Google-Smtp-Source: APXvYqxpxNmkgEuI3uke1mIn3SsVFxqLLQSTHt+RCfLfrDF4bcN280O/i+TLv0xxtfWCdcgCawSM8u/JGmjOVkaUJVc=
X-Received: by 2002:aca:170d:: with SMTP id j13mr3176895oii.77.1563248999520; 
 Mon, 15 Jul 2019 20:49:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190715155036.24864-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190715155036.24864-1-freifunk@adrianschmutzler.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 16 Jul 2019 11:49:48 +0800
Message-ID: <CAJsYDVKnAB7WB6drPLVSNinqCfh8tzSRVnamh6e+MD41g3W81g@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_205001_040323_B5CD991E 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: Remove left-over mistyped
 device string from 02_network
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Mon, Jul 15, 2019 at 11:50 PM Adrian Schmutzler
<freifunk@adrianschmutzler.de> wrote:
>
> In 2011 (!), network setup for nexaira,bc2 was moved to network
> defaults script with a typo so it became b2c:
> https://github.com/openwrt/openwrt/commit/295e04084c5e106dfac0d9f05ac530de5d0fc07d

I remembered that kernel checkpatch.pl checks for git commit
referencing style and I decided to fix it manually before applying.
But I did it the wrong way. Oops...

The following is the output of checkpatch.pl in kernel:
Please use git commit description style 'commit <12+ chars of sha1>
("<title line>")' - ie: 'commit 295e04084c5e ("ramips: setup bc2 mac
addresses from the generic network script")'


>
> This patch just removes the useless entry without replacement,
> since it seems to have worked for 8 years anyway.
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Applied. Thanks!

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
