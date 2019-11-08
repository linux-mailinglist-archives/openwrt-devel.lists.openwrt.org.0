Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADA3F5180
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 17:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3h2aBWEr+dK1IjebwA0vm2kVteNxKK6p5rhy1n0muLU=; b=e+uE1dSq1e8mPK
	fmIdonDu2uzz0LsZNT/yaVdqW//KHlYkTCPQaS/1tdCDmseaN+C3zFyK8UPsoT+dKYEIrRph5b/LV
	oZ7h1Gc361yynOgF3njmTpLdBxOecslHCLCFL9mr3NhpJaYzrFY6euPUa7iq530tedHsBeemMAJI9
	s07plxxafRtNuPI0YmQzTubBiJfMr39TrFvWzI9QdZc/jo8+TQJ8luUZUZVCoJKH5pc7DaeZP27N8
	7jMxl8vT8k6aEvNg5nlBOJjagAe/aZHq2VdfzUlSjHnwNw/4rgaQpQNIWCQ8fitaGkHn0dIrsHNPc
	4yUKgn8u7coxowyis1rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7Qe-0007bt-3P; Fri, 08 Nov 2019 16:48:08 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7QW-0007bD-HI
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 16:48:02 +0000
Received: by mail-lf1-x144.google.com with SMTP id v8so4936188lfa.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 Nov 2019 08:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TL4lWhK61ieH6zWrgrFFO4EDEf4xsY/exiOHXXzk82g=;
 b=VjY4sD10nRyaAy024zMrETrVs1UcZBaSDYWPCX22+jifJtzFxPpGR5y507SWg4CXqw
 BwVrzYQJLsC4QAkvC5VjTP+s2UANJySzR9z+Q9Q4VYNAwuXTyTvi7aQfNojnf+SO553U
 Az9daR8rkQHeeWbG67JA868gMlUGndEtnWOjqGcIaifxIc2j5/O1xaCGLhfbB7NI5yHQ
 8BVYdZG4b2ZqO69SGZtFCRKI11PxqTEzGeGhNc0i4n1uHZQtJgPkGYntIL3PeVy5ojkH
 MJuiAhv6cjx9smE3+3A9qWJwMB61YQOay5MRdSw07X0TMssSsomW3O4pXFxVANBX4X0Z
 Q6kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TL4lWhK61ieH6zWrgrFFO4EDEf4xsY/exiOHXXzk82g=;
 b=CW1L8nJn0/h9B2HyHQhhUsJAPdg458naAljm1Px0TUQVyx12oLDDSBCf3RJjZZVjCn
 mQJE8PfUkI0J6EIZOPNvcEekA4l/CPw0S35z/tf3ozoAfebclaxopPuCYD7rhdQlZhbl
 vCUfNG3X/xaRwZTonCGmYJNEz1mV5RNgeZ0e45aCdDgCNjzJTK/6VQyoM/QqyNL6eNB9
 ASgL+/4F4Rij0NkGjd73w59VH31Bj6q0qhj/l1ugyQA129H27S0sxF7N4KrRERTm9SkI
 kIQv2HRKeA9Xkfuuj9nh27QOGEhBcW1VpqwASCIvyon80p/LhbC1pDy+CHRpE36Q2+K7
 SJTw==
X-Gm-Message-State: APjAAAVMZcwUZrKBEb5gYfqArrQQP8Z36fZ6dRKi4MeBZpA0JfmZmuhp
 8WUUnZwSSWZAguPNtLZ1UW/5IEMx
X-Google-Smtp-Source: APXvYqwmdJI050j5jTGiIfVrZWb5msQlUWV19r+twgAOi5HkZgyZqNN6ATiXovRIrh33uDZLVMb9/w==
X-Received: by 2002:a19:148:: with SMTP id 69mr7739769lfb.76.1573231679208;
 Fri, 08 Nov 2019 08:47:59 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id i30sm3163080lfp.39.2019.11.08.08.47.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 08:47:58 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xA8Glu9g023357; Fri, 8 Nov 2019 19:47:56 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xA8GludQ023356;
 Fri, 8 Nov 2019 19:47:56 +0300
Date: Fri, 8 Nov 2019 19:47:56 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191108164756.GY1190@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <024701d5932b$2eba0f40$8c2e2dc0$@adrianschmutzler.de>
 <20191104165429.GT1190@home.paul.comp>
 <00b001d59644$5a7f1c80$0f7d5580$@adrianschmutzler.de>
 <20191108164133.GX1190@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108164133.GX1190@home.paul.comp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_084800_579466_383CBDD2 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Nov 08, 2019 at 07:41:33PM +0300, Paul Fertser wrote:
> "lp" might be a "language pack" which is to be downloaded and
> flashed separately when using vendor firmware.

One forum post[1] says that the only language pack the person was able
to ever find for this device was for "taiwanese language" :D

[1] http://4pda.ru/forum/lofiversion/index.php?t446257-1580.html

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
