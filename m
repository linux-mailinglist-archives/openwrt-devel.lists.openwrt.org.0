Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8294F997A8
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 17:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=05rSvBihf8NQgWVc4W14pZQoazKadPdhcaqnMm8MGHA=; b=pn9QMd+1EtvBDyC52k+9dVrDZ
	0wNFjFEgxaUBbtVT4At6ZfcZWgznnAVymo6270oqEAqft8h2fr6zbcOJv84+AM0tyoT7RawaAbSQW
	bh7t7aaO8f22lKLj4lzsdpQjqFo7/JUW2OQc40/V3WIU2SV5ymeQI9nyYvCR9az8xFYvC1GtJFyCQ
	DuuQfREJwA1BeLQ0IUhX1+SHbkHa+78M+CnJBUli+21u9JtRnZ2lriSs+oBRRtHSCF1hASv6yoRso
	nCpkmeuQvJFZ3TP/jA8lrpiiQE7hV8lWOErdtxgvaHYtXBpzwZOA+JDnwSVkujz9Ei8l6vAv6P5wK
	XqyFHrs7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oeb-0007YO-7z; Thu, 22 Aug 2019 15:05:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oeS-0007Y1-95
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 15:05:25 +0000
Received: by mail-wr1-x443.google.com with SMTP id q12so5735023wrj.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 22 Aug 2019 08:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=lZ57uMtMUAcjCPvfhleLuJ4QpBRACtSHsmVbeWGJFhY=;
 b=gyTIUhayND8WXLy5edZLp5Zo/L/E86KhQTxKL6bscNwAGUfW50E44rjthgR/IlfKFR
 lbK+m7rnW0kWuswq+wk30235SdQqhaePAlc+z+cmBcJyUgc+TBbvHFq9kEG3UpfPMd23
 v8obygISJIidOC5VfBDL/qqi6bZrBd+5OXsct8qsp2q9k6nGeM0roaRQLDnyssXKysVj
 gZB1jOS1ymWQB8dxL4JM63ScvS8nKQKSMzYhTfFc3GeMTyOwoMRldwwk5pFe+SqM6Ha5
 7zNJZjINjjp9I3jLzSsVHSICkbhHjXtmNpKAans3CttKe1zJCjEINbiPRtP6xpSNURDV
 XiVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=lZ57uMtMUAcjCPvfhleLuJ4QpBRACtSHsmVbeWGJFhY=;
 b=SUQ2o8hxiJ2JHATaAYW76Ckqc57gM1rdZbF6PkafuND8t/1ix9685swm/uMqgrp4pR
 iGQr56WRExXyUl1mlgIar3J5FowSy8B0lLOYqxls14MTxZZRb/bFE2iFXsr3Ub+CposQ
 alzmsXlHA/xP4sp67PnnKFLkn2UKVuO2GjJkufOPbz9HpS2WTXGoOg7TsMflLAGpqTAU
 NZaMgOTzuC1CvLvOAft9skv3MGtMlXUUZWH+uOtRUfJjyTYBI9K9ITbUWl4/z0whE+Jj
 zg4BJlQtuk7iGwS4cGhvSp+87AidYQxuW92twJenRshYeI4uMsrluajWJe6SZeyAIfSF
 nPUg==
X-Gm-Message-State: APjAAAXgzTASq9njrCm2PNf7P+bpAum59+ULKj8Xk7x6FM4a8xU4vx/e
 ePovW0y9a+1jwQ+lAT/oydQ=
X-Google-Smtp-Source: APXvYqzTSPX+9Mh2ADVGgGO4caGC4X6YnHcAkQoCVlY19zixnFWMZS91Gyqohg66acAvCEUAQF8VhQ==
X-Received: by 2002:a5d:490a:: with SMTP id x10mr7188313wrq.152.1566486322292; 
 Thu, 22 Aug 2019 08:05:22 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id s19sm36863299wrb.94.2019.08.22.08.05.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 08:05:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id ed40dfc5;
 Thu, 22 Aug 2019 15:05:19 +0000 (UTC)
Date: Thu, 22 Aug 2019 17:05:19 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Yousong Zhou <yszhou4tech@gmail.com>
In-Reply-To: <CAECwjAjqWJt0zxJu2jEFSdO5BrnDLKTO+Hv1+--s_uyDYr5_pA@mail.gmail.com>
Message-ID: <alpine.LNX.2.21.99999.352.1908221704520.1883@localhost.localdomain>
References: <20190820135159.15632-1-yszhou4tech@gmail.com>
 <alpine.LNX.2.21.99999.352.1908202151110.8021@localhost.localdomain>
 <CAECwjAjqWJt0zxJu2jEFSdO5BrnDLKTO+Hv1+--s_uyDYr5_pA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_080524_345006_BEE7E8D7 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound
 Networks Zodiac GX
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Paul Zanna <paul@northboundnetworks.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

thanks a lot for your work, and answer!!

Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
