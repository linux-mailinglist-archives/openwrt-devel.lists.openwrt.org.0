Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939C9192B08
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 15:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lzX3Xq71VP9S47m0gjNg5JpHJD2VCwhOcko2yKGHv8g=; b=DUiNy7wEH3sW9J
	cOL+JIzVGogJwaNvuBwIUKnsyZWZ6lpTLc3Arl/KOYsbJifJp4maOZGl9w1qggMfARS2ct4EM8p3L
	G/r8ZTKsZmiSFQPPGeoSzyXxMgTJAXlTfWCaeB/qlKhEo+AwBWb1XSal/Ox7gttxxwVLA3yR955Q0
	c/7+u6XKR6GUYWSdWZ3FVjvxxkxeq5WvoAyc0KGeysARxSWYRZKKqA9mWCk3PAle+jtYbZrv2Lh1E
	SHkwK7q6UfCv1WE47evnhLIFGUTfF0XWmFSD259/Yjv8a3wh34Yo+rWEH2XKXkvTGQmBU0tDu0P72
	UR3XssTp4CHv61zQ1a1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH6vp-0002PF-7q; Wed, 25 Mar 2020 14:22:57 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH6vi-0002Oj-C2
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 14:22:51 +0000
Received: by mail-wm1-x32f.google.com with SMTP id c81so2667075wmd.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 07:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version;
 bh=Lajn5Hu6I0LS7NeIpiwOVbB2VZ4TxvjpNyfr7O7TU3c=;
 b=Epg6lHdvkYg93jPJkHqsxmYsvcmQ/qVJeZznT9pGqGEGwDDfKvJReVb8Ppupyn6zc4
 U1gdCCJZICf+VKDI5g+zGF6EGj67SqFxobaXpq+gm+oYEDq5ZemCoebJCg/n5vRJn9oU
 nnSVZIAOJ/63uQFq++79QniTIX0EzkH85sSSst7Wq4z7YYJJjZlx78avMp8tqHA2Z8nx
 iTBbzMin0HbNhZp2pwL1mhPyd2G0nJoPL8oqVVOmZ3X55CpiPIJOaIrXvcQWUzefSv5Z
 FuFwPyPFfxT+eoCTVlNDOi5asCi+chQJT4ivnPaFIYXf0WY31nNq4ShKpaXi992qJ88e
 LjOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
 bh=Lajn5Hu6I0LS7NeIpiwOVbB2VZ4TxvjpNyfr7O7TU3c=;
 b=EQQ6FFs0q2ccHuXFzQI3JUiJ/IRkADlyb6yDY2jnBRttyjrsMh0zalDs28tDM2ob6l
 izHZWZ+pB9eHAuOh93ApccrEukHQ+EdWjPmKidxhCEihJHY0VD7oMzWojqbscHJNmEah
 qqzh6Nshs7DPpg0jKExjohn/M4dOnBKT/PXXnXjGvpwbuj/SFnp0gZoLcVV//G83ebQI
 fLLQkFm6hYnV2VdvHBJFCMMGnVYlTNNMlW6OnBjbY/IuNQ3cE3A67BICu2E4eQLrQiBa
 eVVxZbsZvAf07Q6bAF9tqM20qDeR9zcii2UQVbJSGo/9c4HfjGElVLESnyaReEWeUXlb
 OxVg==
X-Gm-Message-State: ANhLgQ0OsasVcuw3P/DAGglorTy5YhXxvTEQh5MmPsk1H0KBBCaBDrRq
 Ln9Kah5Bcd/Ty3Hm53Fddac48LaN
X-Google-Smtp-Source: ADFU+vvW1TKxD3lRYFqGee1mCOFhh167Ld3u6PfYQiYNE72zPjq0DsD2rKucOw0KwUqQlcVc7ThgBw==
X-Received: by 2002:a1c:147:: with SMTP id 68mr3802712wmb.28.1585146167527;
 Wed, 25 Mar 2020 07:22:47 -0700 (PDT)
Received: from eeeinsomma (host48-12-dynamic.60-82-r.retail.telecomitalia.it.
 [82.60.12.48])
 by smtp.gmail.com with ESMTPSA id a14sm4786743wrv.76.2020.03.25.07.22.46
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 07:22:47 -0700 (PDT)
Date: Wed, 25 Mar 2020 15:22:45 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.22.413.2003251520200.9003@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_072250_411598_27BC5DFD 
X-CRM114-Status: UNSURE (   4.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Asus WL-330N3G not booting
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

Hello guys!!

I tried to flash a builtbot-built snapshot of OpenWRt to this small device. It doesn't boot. I don't have serial console access so I am unable to report on what's goin' on wrong here.
I have another WL-330N3G running on ramips kernel 4.14.101. can you help me out in finding out possible causes?
I would be very grateful for that.


Enrico Mioso

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
