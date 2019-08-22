Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9ED399256
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 13:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QP2ZtTsOHmi5kOIg/uyA6hTw4ZKBSTFilq0A9iZ2GPY=; b=O4bHUTKKAbtOPy
	GHZxnL5KlGhg84C/tekZlyXXbNPfi+cf5yEK2o/43WjHWucgQw69Q6p2+Cr9FYXvwCmRC2fWc3Swb
	Z9HleQbQAoFix3REI0Ud6bQxGVzpd532ZgHfWoJj+dYaGbQ+XvR0knuc/WmIeA4qPpsDgBt59DhDu
	MZo2ArJBG8MK5zRCvhzWHU3pov/EgTMRIGmitGBic0ShIt4K2wYQ26YZEHI6RsH8L8lziifTV5UNc
	ssSPoPXzxfi41Olf8rbMSX7cJdBmqI90ykhpz0m82hvNyMSfZIrNT30BGweufkV1JgmcqP7Mriu3L
	jtwHLVqO8PioCvlf63Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lS4-0003sV-Be; Thu, 22 Aug 2019 11:40:24 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lRi-0003I4-6c
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 11:40:03 +0000
Received: by mail-yb1-xb41.google.com with SMTP id o82so2363466ybg.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 22 Aug 2019 04:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=twNryWfJm8iMacO1/nh50clg/+G6iTcJm5MdKo9OdZI=;
 b=qbu5Vco4/JbZ8jllqM8V3/BelDbFNjq5RxNaX1v8zkxR2Qxks9RhEkq2cQfgl0p0P/
 1ddyUu3OQi8fUQAaf3jYt5pvzBxrHmb205Jh/KpkRyqPH7DHHmlGKUangjwtuveZ55cJ
 v9kJFZHzx071w2KDUOxTQz4poQx4MVEjjbEwbT7f3Pq5rTCOEGxo/RcDENJmnYTCnFz2
 zi3Qve9iEUoCZJd3a+9wzB5W5KcdtZtbs9HLFy+htSFXgj4GKqi4BzCbemiE7W5PS4gf
 2UX2WxDUWA9pXtrze8JeDEY6TcdxztL7qvxo+oGio9NlDiI0ZkgtQXeSXS5SfbcWZfJ8
 eD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=twNryWfJm8iMacO1/nh50clg/+G6iTcJm5MdKo9OdZI=;
 b=L2sdx6kh3rKbEPwLO1r2VL2KbhW7YO+VCBBpUkRRYVPREX/JwsjkGywqAcM1wu1vVz
 cPyfY6+cOmAtjWRio0p80iFSC63JYymUPND0lmuab/Osl2eATU72kjJ1ObG4pDeHvVN8
 AcRvrAWyGwp3AgEgjJFLnMQ4QUhwzVr8HGjHi4F4ChcUEt4qVAI1QAyC9gx/kxUeIFeU
 fWK8Sb7ki69pjLZH2VCb3yKhpPTQI/fZunVxU1XeimnHM8Vxjp6Hn0zGxG96cQb5cgyD
 SbaOjaUtvMTDvqEO29fqBr0AZ4n3oBZh33b47Jh0ELFF/B+vkAZHvAm6CYUuXc4qd0KX
 gwuA==
X-Gm-Message-State: APjAAAWFp6KwkBId0w3qWpV/On6QYDYCA5CHpDH7PpMghI9B/vtjT5Ap
 7TVlnp7QbqVmcNduRZ1zvD1DAm09KgZUPq8UplSqVw==
X-Google-Smtp-Source: APXvYqzjeoZ6BZP4PGM0KiyetJmMHOLcr9B7MwNW82hjHkTCOOCBIgr49f7nBHgaXAzS586IZKW7+CfLD2iilGx+o3k=
X-Received: by 2002:a25:6ad7:: with SMTP id f206mr29051452ybc.71.1566474001034; 
 Thu, 22 Aug 2019 04:40:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190816142848.14412-1-zajec5@gmail.com>
 <93bb5faa-0505-5948-c990-4b88d7ff95e0@wwsnet.net>
In-Reply-To: <93bb5faa-0505-5948-c990-4b88d7ff95e0@wwsnet.net>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 22 Aug 2019 13:39:49 +0200
Message-ID: <CACna6rwqBaYu_QFkLPFxRyTF-3fUsX9iwQtcD_u-0WEUuogfMA@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_044002_274820_CC801E5A 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: support passing "options"
 to the "sysupgrade" ubus method
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, 17 Aug 2019 at 12:31, Jo-Philipp Wich <jo@mein.io> wrote:
> > [...]
> > +
> > +     blobmsg_for_each_attr(option, options, rem) {
> > +             const char *prefix = "UPGRADE_OPT_";
> > +             char *name = malloc(strlen(prefix) + strlen(blobmsg_name(option)));
> > +             char value[11];
> > +             char *c;
> > +             int tmp;
> > +
> > +             if (!name) {
> > +                     continue;
> > +             }
> > +             sprintf(name, "%s%s", prefix, blobmsg_name(option));
> > +             for (c = name + strlen(prefix); *c; c++) {
>
> I'd propose some more sanity checking here:

Pushed with your checks, thanks!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
