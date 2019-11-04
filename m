Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90382EEAF5
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 22:20:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bNtrMv6R5bv9G3qqU5iMx+sZ/49PiZqkA9R9H2Xiz0=; b=BPdz8/YWuBA2jn
	RKsROSHXNoHqHyWrIJ7GWMlrWYy7ZTD7d9ur48PQQ+g5lBh4uMUaOEz3WaC3LvKIFygcKWIyU9bu4
	LOxmjySRbf2Foqm+9SFgwapjBDyRbCm28qY0sW4loMvHxCi1R2BU4F0/4LUzAWOvbNYUfzAg093wZ
	Z/+BD3asXDznTc/1tDv0ELX6IUzG3QS3iy9hW2HbWRbqwpWo9SkSrilR3CuVEjNGgwSzfkoQ3wsPI
	yTg2LEtVo9e11BaFJ+hGz02HP097eTvgHDVDN1Z/thmH2WM32/nvUVnuL9whI/XeSZ9hsLL8uNkvx
	XQ4X716lQgtOQITAGWFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjld-0007GD-BY; Mon, 04 Nov 2019 21:20:05 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjlP-0007FL-QF
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 21:19:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id q2so12740474ljg.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 Nov 2019 13:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EoqH/kvuyjU1aQD25G8N9pOABYUBNBENPpFebtJyRMo=;
 b=S+fTH1OGlc6B7+MRC24J8kGqhjW7VXW54dsixgVPN1LIx0x8ocAjxgJvclOjCxCW4C
 gpNjihCa5BJeqNsgikz7eSF9DVptzp3/eXVFB2q+cMzJRX64dA5JpU04McngGY51Kuxe
 DYHrHJLMqAzGFmBwi+Xw3WZ2umRlppYJyilWAvakBhG+ptTOYoEooeKeRkt6lD/hFrCu
 O36A+RR+KKr6HM+NKomKoZPbWrmulz+rBuvWnvCJVUxon+CR2qubTHDkU+a/dvWFggqh
 aG+Fez/qaR90ssAKi8qHQ9NUseAlAD/HYvP8MyCzR/weYjvUYNeZlv81xniZqAbAA31F
 dMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EoqH/kvuyjU1aQD25G8N9pOABYUBNBENPpFebtJyRMo=;
 b=EZRN/4z4EdtHun7Iy1b1N6s7Pqo8DrINnOFD5RUtISa5ckTkCGzGHrJz0FgswHAIvo
 QazhtQjR2DiOP48P8Q5rLEgl6o6c0PqEjHr46B6EbZLqmbXRDwNuYbF4sy++hLIOlU68
 8HWWfztEOE2MQVePxgl5nXU5uUIg040ICMw1MNX7ycG4MBewciQWkemMhcjDBp0LLOIM
 6zt8BPgNWlb316qhW9XiJKm9ypOok0OXrUXhRFRG7gmixEF8ndpoDGu+Sk8ZIpDIljkn
 dbvQKexVce7mKZHMbzbVN253c155+7VpObFPt9Ngqum+GofV6PaMOWu4EAHckaXoYORP
 9NBQ==
X-Gm-Message-State: APjAAAUF2ufIUp3icQDPxOsZOu5+n/NAogtwXUhFg50idGddY72eRa+a
 dEZ7lz6O5oyE7FTbDRZmJ+0=
X-Google-Smtp-Source: APXvYqwZlyrTiRVgSlJDtCGZG5Ke9T0wTRNKCep4Fa5cNgYCZBtYDGjBNsgWnC0D6UlOU0ri2KvOXA==
X-Received: by 2002:a2e:2903:: with SMTP id u3mr20825856lje.131.1572902387374; 
 Mon, 04 Nov 2019 13:19:47 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id 27sm8399377ljv.82.2019.11.04.13.19.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 13:19:46 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xA4LJiDL014054; Tue, 5 Nov 2019 00:19:44 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xA4LJi61014053;
 Tue, 5 Nov 2019 00:19:44 +0300
Date: Tue, 5 Nov 2019 00:19:44 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191104211944.GY1190@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <024701d5932b$2eba0f40$8c2e2dc0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <024701d5932b$2eba0f40$8c2e2dc0$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_131951_875867_B1BE450F 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Nov 04, 2019 at 05:16:15PM +0100, Adrian Schmutzler wrote:
> > +		power_green: power_green {
> > +			label = "d-link:green:power";
> 
> It's policy to use boardname instead of "d-link" here, except for tplink as far as I know.

But in this case there're three other boards that can be supported by
almost the same code (they lack "wlan" led but they also get a bigger
firmware partition becase they have no "lp" partition). I am not sure
how to properly add support for all of them, especially given I have
no way to test on real hardware (except for the E4). 

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
