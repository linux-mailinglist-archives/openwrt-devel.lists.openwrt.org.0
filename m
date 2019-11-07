Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB33F26D1
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 06:19:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btmBwlPcDbjRMNfY7jkuaERjduI6GPFs7uU45lR7ALI=; b=lupcNQ9y4mN3Mw
	O/MeDPCc8kvXvGkBVPBnh4BBR/UrhP2JFlkYj5u3o+UcN/4L/1wH1B1viEAJvkZ3yE6tCJ3Ckq3WU
	H0vDpIf9gquCbo1YHPLJ/72uXb24XYGqqGu3bPn0tZg5gVTfdNd9C+U5pBeJ2jkZp8GI0QNlPbFGu
	3vURBa4k0SBxn1+mns1U01VmaZRiKEPBsn3K1fbG1y1tWR8lIvuyTnyxxYr85AysDfBTNpv4rGojx
	wPqxOv26P7SYxUWjsT64tprD3XYRW3CnTgELmyZKrxem83Pn2nEVkbFrFjvfZIOutEuNHstmhriTj
	0vWfvahaI/Vbcu+SZqMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSaCt-0008Jd-P7; Thu, 07 Nov 2019 05:19:43 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSaCm-0008J3-Jr
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 05:19:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id v4so527390lfd.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 06 Nov 2019 21:19:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yXvwRYWKJJokfRlMpQGiuJ9+sA6L/nctQPBXFFv77pQ=;
 b=bOYPgiHTzpeWPx6Hm7TI08ZzuV1bxGLdABWecv8zv5hkOnBI+/vtaWV9gdYETnmNrC
 36C9wK3HEaKfVYqf12rhUN40/OwgXBKMEtmUm10jAJfmnGJL9isHIlOFqgJXXWTyE+Wb
 2lSzHVrmPTmRkiuPMTG54uz5msqfWYO3Zg4n77edWvvXfW6ahXb+pJKLqlPYLHseZmgN
 IQ9NgkE/30KAmPedMso37oEXTNQFGljenLaddoekF54HV44cRrQBKwmCwsl4/sAeMXVE
 9ybJCmHYnIhnP7zM/AbPb7Bahzw8HzjhUCvHPOqLYaIwNU56rj/1S5cpNJTF71f76sSH
 5gDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yXvwRYWKJJokfRlMpQGiuJ9+sA6L/nctQPBXFFv77pQ=;
 b=ONSdU92qjiXH2GZ8RuE8DeWuVNkruH22TsvwUT1o6DjZyZBoRvHwD1xjqXtWzn4M7x
 PYfNTmb6JH/WiDm2I3WOep7cjkSY6Svg7Ev1SpU9zm1ChyW+nwul41M3WT+eSNFJOu55
 km09a/XGgMN4UWmQ4+3mrGGjfTd/E3hFF5AkUCSCgY6eOcf4hDG7uUdJrP+mNxoTUzyI
 1Pmk2SnYaa2VZD3pOjAMNXvO6MNOXTmFttjrp4tG2y9Z+a9aBFVs6tgtkevjaN+tWzKM
 7Ix1dOACb/83XJOLBmgamu94t6LaI2JoCxXlQ6vmOrkkuNcvWakpw84l6rcfzO3uhxSk
 nRdw==
X-Gm-Message-State: APjAAAWvcuChhUpSAez1jlS+rrhF4b2HdYAFTe4ojYNZv+iGO06/nTiF
 RQzDy039gjkQbvMlr/4KHaM=
X-Google-Smtp-Source: APXvYqw5q+vCfX7fRmUKgqCty9A2hNOlGn2o6voRFlXhk1hTGDoRCkQpckZGYc7kUK5XuqCZHFPwyA==
X-Received: by 2002:ac2:5c05:: with SMTP id r5mr819351lfp.72.1573103972391;
 Wed, 06 Nov 2019 21:19:32 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id b141sm435169lfg.67.2019.11.06.21.19.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 21:19:30 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xA75JSxc019050; Thu, 7 Nov 2019 08:19:28 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xA75JSA0019049;
 Thu, 7 Nov 2019 08:19:28 +0300
Date: Thu, 7 Nov 2019 08:19:27 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: tmo26@gmx.de
Message-ID: <20191107051927.GT1190@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <002b01d594f1$ebb56320$c3202960$@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <002b01d594f1$ebb56320$c3202960$@gmx.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_211936_655602_FD0AAD09 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Cc: openwrt-devel@lists.openwrt.org,
 'Adrian Schmutzler' <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Thomas,

On Wed, Nov 06, 2019 at 11:31:23PM +0100, tmo26@gmx.de wrote:
> > Support ported from ar71xx.
> >
> > Signed-off-by: Paul Fertser <fercerpav@gmail.com>
> 
> [...]
> 
> Can you please add installation instructions?

Please notice that this patch is WiP and some additional changes are
to be introduced in v2.

I would expect -factory.bin to be flashable by vendor
firmware. Closely looking at hexdump -C doesn't reveal any differences
between generated images by existing support in ar71xx target and this
ath79 port. Upgrading from OpenWrt is possible with sysupgrade. TFTP
to uboot doesn't work for me (I receive ARP request and send replies
back but they're apparently never heard) but with "loady" I'm able to
bootm an initramfs image and then sysupgrade from it.

I see there's some http server mentioned in the wiki article, haven't
tried it yet (and I can't understand what "simple" web browser it
talks about, probably there should be a curl command instead?), and
in my opinion it's ok to wait for a few minutes for slow serial upload
as it's to be performed only once anyway but if you can figure a
reliable http method it would be a nice alternative.

Where would you like to have the additional installation instructions,
on the wiki or in the commit message itself?

BTW, as a device user, what's your opinion regarding mac and lp
partitions, do you consider keeping them wasteful or not?

Thank you!
-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
