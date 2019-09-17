Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96080B54C9
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 19:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EQfS4Xpv8bd9PtDsdKD6aycIw6mDzDfh0HfyD5eraR4=; b=uBEX1STO28fT2E/HsBdcii+lG
	4dAU/vsnx4SE386EBhLfR3FQNnruiDwNBGCsbFRA3pHKy78vdS7tqGLxQWzqFc5eXvQ2laY0CCRTb
	pFMDpmUGOwuD6W+/VnAl4eQUDUfo+k/VPYyKKDuJJn9lDou39quETHhXIMkmaFO0cpCfEJqMlxz/S
	OmpxZ2kwjJ7zsas+fFXW972d9e5AXnik7iuuVNGnwrRwAbjjgwkJ1fj93EAyqLd7/nPCh2y9fyHE+
	gte72mggrS76MCCJ74W0zHAXBq/J3Sp6lkkINomfhepf4cAOPYNdz3M52zH1Spf58OYBmzM6poiir
	FIRnY87Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHlM-00018x-EC; Tue, 17 Sep 2019 17:59:40 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHlB-00018X-U8
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 17:59:31 +0000
Received: by mail-wr1-x42c.google.com with SMTP id y19so4166192wrd.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 10:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=86C4J5IogzeC/dwYPylBrD7qAE3+rhvs6IqFk6vL88Y=;
 b=e+DrOHVWYGgrT5weiRrjiGbxMamNqwOMlbMxL5K0GufHr0ew4L3bgmmxmiKKyt3ZIa
 gw2JTMV5Tka9QPRdVyx886rQGWRSTY997YPzJsblr0w+IAGB69EhpeDYVlpJGNYjTvzb
 V/MKRYOdIOqOg9UTHttBNrLvPtogFD6rX2uDP/2W+Qp9kIvkg6E5zI8yJKi+uBoHm6TF
 nc4hLU3tRCvnNviIDPnBK2nvw98c86/nCDRlvMhWDDNLgStmTa0jYB0Bz42Jm1JyNWZe
 qAkMLb90DsoQvglHP8/QksixubVki9rjm+515OIohaDt6WtycQFdOmL6reAoJ+yqUuGv
 Y8Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=86C4J5IogzeC/dwYPylBrD7qAE3+rhvs6IqFk6vL88Y=;
 b=iybGn/r4NK7bVmusomHtfCGlbDTVZ6ykjmsb1+Z2Cfkp9EF6ikWLdS/ZqY7+NOMucr
 AQuxQTtM+XPePf/OSeZUD9iwu0EZhBfER94d9zm6Y6VgVSGqguAydU6+Ca52i7O1beWg
 a1tm8+f2zBEt8CPp6HzK5nUBNuVqhp5u5xHlc/wtkaqOPDP4HooNs6fbuvEOwFw20KGB
 xg+IsEeYsYpLqO7xdBsuqait1mgnEl2wy8Usincv90vQl+DIMq1PyFxAGfANuYIq3hjJ
 t/zccQh4Wbrb0OqJyw67kz1lxF6cjchhXMpE3oSiwj9p7Rg8Mxt7kCfFh5VhREFpszjC
 OV4Q==
X-Gm-Message-State: APjAAAW1/IdlXCz6kbbuOprJd99vUBAuJudb0dd3dA6KA1PgHgqFoGxO
 C6ThPjGshIYy0txSGOQv8AHvs+lV
X-Google-Smtp-Source: APXvYqyFpnylODSb2HOvrXR57cpdZBEJ8tr3UT5wd2miSVnaE73Uba9mZUsNcOemRLrs53nhvIsquQ==
X-Received: by 2002:a5d:4ac7:: with SMTP id y7mr4200240wrs.271.1568743165362; 
 Tue, 17 Sep 2019 10:59:25 -0700 (PDT)
Received: from mStation (host111-46-dynamic.5-87-r.retail.telecomitalia.it.
 [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id a18sm6443409wrh.25.2019.09.17.10.59.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 10:59:24 -0700 (PDT)
Date: Tue, 17 Sep 2019 19:59:22 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: mail@adrianschmutzler.de
In-Reply-To: <007b01d56d7f$a787b2a0$f69717e0$@adrianschmutzler.de>
Message-ID: <alpine.LNX.2.21.99999.353.1909171958450.1301929@mStation.localdomain>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
 <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
 <007b01d56d7f$a787b2a0$f69717e0$@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_105929_997245_BE73D1AD 
X-CRM114-Status: UNSURE (   3.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: Filip Moc <lede@moc6.cz>, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thanks! I'll take a look now.
Still, something should be interestingly wrong here:

root@OpenWrt:/# swconfig dev switch0 show|grep -i link
         link: port:0 link:up speed:1000baseT full-duplex txflow rxflow
         link: port:1 link:up speed:100baseT full-duplex auto
         link: port:2 link:down
         link: port:3 link:down
         link: port:4 link:down
root@OpenWrt:/#

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
