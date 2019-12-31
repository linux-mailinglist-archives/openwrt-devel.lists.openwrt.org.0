Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E60812D969
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 15:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1Taq1HJq/arWzjp+UhASQViXNApNIVz1ALI/ynKzWQ=; b=Io/213McnPHO3j
	bSF+MOxkCp1hh1U7ISuEeEtFht8uCqxeu26vlfmemLsabxsNE/dTYnZg+oLw1b2urR6ELdheNlXH7
	ul0NVIpmd7gAF8pTA6yxo7J/iwTBUxsrARnkVvnlvKiSTLwXLPz4MubchzCDEP0akvGg3JDRFdyZz
	Mj+j6FV9ztQtGzRTZLeWWmnO6xJT2yZIuQTFhL8RqiHqBtWITF8kVBuZCRn81gCSIBEpi9Uo1gYi3
	GeuOFTMKRcdURI5DeXB1Mthyu9cza7wWXyBM9ZaKsQY8052synJpR14a9FoP4BbSLHg37UqyHM31y
	JOAdyR5Hh1tVHaG154jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imIJj-0006IC-B6; Tue, 31 Dec 2019 14:16:15 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imIJc-0006Hi-08
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 14:16:09 +0000
Received: by mail-lf1-x144.google.com with SMTP id 203so27054499lfa.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 06:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4X6Wqg80ke5UDZk1GuWdOb3+YV96MwurfYy1T2RQmLM=;
 b=tAXV6/9Wy1AqOPl+k2dXOIqQoYGmdMvuZfyaX1DyIOoJN2zbjCH3t5K0/L8xI0hDYB
 bro9Lm44KwhCanj+c8ej7/8MmhyZZyP+2lIEd7bN3RzG0TqMGFaZQVoK6m0qroT7lmLw
 c7BCRSfn9Xx2FbcX7C4/6vOBynmrEIakWCBXabgeH9Nk7Ui+2lFygeZuLT7FPhbtwkMl
 YEDKUkMA6Ae2fVmZSjwJFyMbC6ulc8VKJzR62sZXzDWE9tUFqtbZbI7SXbif4vDbeSYA
 kxXytLEb3W6uIcviDMFIvDlFj1H8xb1MY7/xS09XY93tmsCMmXmc1nY3Rd3a3ZP74NTK
 Zk3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4X6Wqg80ke5UDZk1GuWdOb3+YV96MwurfYy1T2RQmLM=;
 b=C/dwyb6NhMLm3+zwtt5CaPjCM25ZnSalbo97B1ywfVaKrjzJdCMs4zbnWRvG3jEywr
 wo/UAD1ZtvOnM+RhOhvEDBKkcvjoFJ0btGo8UFdE2CCwaK52N768cZc7fR40zb8aqr/X
 qGRHtEoTUOZeJ1roPnb3YEBRr5KrdVngoZm139vZjjtr58Cobk5kCNVrKkNxh9ANRJhV
 Q+fth6pBnvBBi8v4IoXrBPtD4NOXIXaTW5AoO1A6NLiBD+jT4uvqVbo8m55JVdRSYIHj
 hQF5lYaN5gXKv32EUjvicfgz9xjGnuiMuOZ7uzDPEabfGyHC7Mxz9eNFcW2t5Y2urDQR
 bPJA==
X-Gm-Message-State: APjAAAXNafKah20K4H/EFhe9Te29mtSrji4B8ItBHCzN0aBcY2TgqB9C
 ssMk5jtPnnYXOQkseBBTPqI=
X-Google-Smtp-Source: APXvYqzPUJuc6iheo6YLvbVP6BdX+xTJfhadP8aUTTXCqHtoSpJ9R43lnt8jseD6zfIrEheTgqHgSw==
X-Received: by 2002:a19:3f51:: with SMTP id m78mr43043113lfa.70.1577801764555; 
 Tue, 31 Dec 2019 06:16:04 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id r26sm20125529lfm.82.2019.12.31.06.16.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 06:16:03 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBVEG0OK030538; Tue, 31 Dec 2019 17:16:01 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBVEFxrZ030537;
 Tue, 31 Dec 2019 17:15:59 +0300
Date: Tue, 31 Dec 2019 17:15:59 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <20191231141559.GP11377@home.paul.comp>
References: <20191228140048.GO11377@home.paul.comp>
 <9f716d9b-4230-b3e0-7e38-78c4c4781a78@wwsnet.net>
 <36732b2f-c95a-5749-e028-653a9f8ea4f8@david-bauer.net>
 <bcd2f7e5-abad-3b9c-7a62-b79bd6b424a6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bcd2f7e5-abad-3b9c-7a62-b79bd6b424a6@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_061608_066252_D683763A 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Preserving configs over sysupgrade on
 ath79/tiny broken for some boards (on 19.07 and master), possible solutions
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
Cc: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello gents,

On Mon, Dec 30, 2019 at 02:41:12PM +0100, Piotr Dymacz wrote:
> > On 12/30/19 12:42 PM, Jo-Philipp Wich wrote:
> > > Hi,
> > > 
> > > given that (binary release) support for 4MB devices will end with 19.07,
> > > I'd vote for reverting the 4K sector change in ath79 and stick with 64K
> > > ones as common denominator across the entire target. That will be the
> > > least invasive and most robust fix.
> > 
> > +1
> > 
> > IMHO this change is way to crucial to have it introduced this short before
> > the release is built. People who built images for their devices can introduce
> > 4K sectors to their own images. This way, we do't risk breaking boards.
> 
> +1

Are any of you using the affected TP-Link boards or ath79/tiny or
4 MiB devices in general? What features do you actually pack in them?
Do you plan to continue doing so past 19.XX release?

If no users speak up probably it's better to remove all the support
code altogether to avoid wasting maintainers' time on it?

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
