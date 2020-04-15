Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E39C1AAEF6
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 19:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FL9I7g5nipe/fzktLzr81oITj/cwCMX9UIqC44kxoMY=; b=DVDCWVXEW3M8ye
	UhqYgqazMZvYqT3+z06IsjFZg+1MyxG9cAjInhjRqMJJnEjRJhOmQO3Z7RW1HRzDF4elv2pyGsXZD
	T285vS61eipdy4/Qwi9y+zqDsGZjT/OyvwmPWM/6yCwAyK0NuF0YSiETXZgmNDzkavI3HHXMFHmtV
	FqZL3Z3KZC9ZxKpzv93k/Ep+83+rxs8L3CsLwTKD18oEae5mvbJtTxMsFGOJ4PucXXZ1taMpdQT0M
	+eicY5XhhtULS1HTJA3iX2fyb/1/zCLEbyDNeLBQQJOJeXbVlcsKvZb0Pdoszs1HSeh9JjS4LczmI
	Lg+pvcP7QbeAxIR0dILA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlOJ-00035r-O7; Wed, 15 Apr 2020 16:59:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOlOE-00035V-Py
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 16:59:56 +0000
Received: by mail-wr1-x444.google.com with SMTP id x18so757106wrq.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 Apr 2020 09:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:in-reply-to:message-id:references:mime-version;
 bh=yOuxrPGiPuwBpBOJKx+1ifm2I7X7SJ2aAHq6mluL6rc=;
 b=IAf5Gri/ubaZcQLAcfL9YC9JvIc8mReWmfzF71MyU/Cp/w9l9GNTPPB7ntWKDEXYDk
 Vw7qn08gGgwjId2jcLBQROqXcixvZa1WOPD/jGyR7L8pAYEcjw3i1BqxxBMXBXqY/GWX
 kTAMzgj+HWMwAydVap/cqeZC4S0b5s97g7SE6I5Go4RPjcCER1LbZq8LaQCh/116KnTe
 dz5YrguVNhicT5LgCdvPXI9w1YEKs3Yqzn0Ppvbo6tBk1NjELM4sCPnjizu+s9K25O1I
 CvFs6/Z54aG0vqzcXlfA0KaxjaOrEiLdt7g9bHuMRh2+BWTv2o2FfTX6GBhEiR2nrypx
 EYqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
 :references:mime-version;
 bh=yOuxrPGiPuwBpBOJKx+1ifm2I7X7SJ2aAHq6mluL6rc=;
 b=CasXJnV7xBrTA4D/eO6StDg2RmQTb6On09pZt8Vh/V3aW4dbS5/AIhvI8ZfVZkbw5J
 ZarF4l+5bqp0gbGjB/+AahqWB2XhiaN+45obFbreZe2o34491TsiPPVlRbqccGAEE3FV
 vI/ovf5a2lk6NxufoDpYL/8O+zuSfudJKrTLjvnn6uPo8uF2SUpmAZBlrouyfUzuJk3R
 MvYekq2z634zxUqW36v6M1bwptnu6VRmXYT3pzXQg98iN92m3DJZByUeQuBBv0bMPIKu
 +uLojMn6TZWYGHt4pbIcQlNNfqTEI3Q9HK8VHaC9A0uOQtuv1P30U9ow0fbdXO7MzFe6
 jQAg==
X-Gm-Message-State: AGi0PubBHhbfiggQoVgsIiuAJFPfX3o3rW0qHpRziqc+T74sE9F8EqzT
 /RQbZlC8OYd1D6257phNJbk=
X-Google-Smtp-Source: APiQypLt+F/Gj6JwXr8pf4PHIV7enVoQpUAowgJJneOuBQEVh7fIfJCOXKY1lOT3YDvzT0CVyKUNwA==
X-Received: by 2002:adf:b78b:: with SMTP id s11mr28848583wre.235.1586969992378; 
 Wed, 15 Apr 2020 09:59:52 -0700 (PDT)
Received: from eeeinsomma
 (host232-120-dynamic.180-80-r.retail.telecomitalia.it. [80.180.120.232])
 by smtp.gmail.com with ESMTPSA id k23sm172957wmi.46.2020.04.15.09.59.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 09:59:51 -0700 (PDT)
Date: Wed, 15 Apr 2020 18:59:50 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: David Bauer <mail@david-bauer.net>, openwrt-devel@lists.openwrt.org
In-Reply-To: <20200415164719.134391-2-mail@david-bauer.net>
Message-ID: <alpine.LNX.2.22.413.2004151858140.2212@localhost.localdomain>
References: <20200415164719.134391-1-mail@david-bauer.net>
 <20200415164719.134391-2-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_095954_866532_48C475CF 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ath79: add support for AVM
 FRITZ!WLAN Repeater 1750E
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello!!

Does the scripts/flashing/eva_ramboot.py work with the version of the EVA boot loader on this board?
If so, you may rewrite the commit instructions using it, to mainline the process a little bit, if you want.
Only matter of taste.

thanks!!
Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
