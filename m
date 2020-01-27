Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A883114A813
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 17:32:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jcS9dSmJ0XuzmIm01Cd8X5LnCrgl2vXAoKKb2k5Bjhs=; b=kNWDEPZEAyW+VVh7rYDl41eiz
	fd6cCpQUXnexxZddg8Ba3x16qOq4BlsAQz6hd3Of0fu108XKDM3dV0cdEDgsjjlf10XVfn+uuqtlT
	tC3sipcWSb10BVrDax/sTaSBj/NCIs3A4qUoin8NdFhRa9Fl/P/tp4rymgyJU9wRI/J3jNymt2D3Q
	NnnCpG2cBr9zqaQvWl8diJ6dkbJdpjJi6EO+pXzQ2EKKA54q70BCHDYc7JuSxUaiCwu9m5mZs7lSp
	SOdr47p3t187SeVUAydwcdoByfv8NzYzTlSYlbcpQiTRBKZSmy70d3nLJPhqZckGKlmImMN1bsWcC
	JFSs0KQNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw7Iy-0000cx-UA; Mon, 27 Jan 2020 16:32:04 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw7Ip-0000cE-80
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 16:31:56 +0000
Received: by mail-wr1-x434.google.com with SMTP id y11so12115225wrt.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Jan 2020 08:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=Ap1CQNZVE5EZtaNNL/3Hm3GyWCfx8dAWi2CfKlem1Jw=;
 b=eHKy1F3ieqrBenY/vUdOfr1y6XcmCyJq89iXpvURn4pnzMdf0Usni9LA6siMKsDuMv
 iQe4bvcIGn6KA7d4RY/mqC4YVU5gK1DCY/YNz2o0z4K03xTODdVUriY+cIgCtnV557+T
 5AmsCt2LmN6SLSKRK2+BsX0fWfnTPvl/yTfYIRn/P5vSZvYwsxvUBvoSvGCh+POVT7Cv
 jpghhfyYDfDyWcNIEosNMj+ro70C/M6Gequb07zQezJ1W4jsuDbYup5D4n6Rz4SCE1Hu
 9ZsBHeDgep1xT9JtJMEqMkUvbOn+JoGDgJAY1FRqrE6kjrqn60gXyopkGaDq96xkEW7O
 wTmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Ap1CQNZVE5EZtaNNL/3Hm3GyWCfx8dAWi2CfKlem1Jw=;
 b=sYycJzKuKc01nsHSyKSXe3KXKNViYxR+Rgq0vt/I7BGy6XabXWL/uYwVo7fQ7OhrYP
 SqBbLMz3oiFiVcwDKyUgXCiSuMVtNUkFfDJ5w4XMMD+A8g041+9dZD6+T/oplpRGc8B7
 3PPXk0D1dqjcBKy6+jDmrBei8pRtFlX2C7TR9iJFx6+Txk/8Ms+rAV4fqdFip68GWfx0
 Ju/0YQ4W/aRl/B2ns0S0rXpBTh4dtRSr7YRTqrHpb3eVHX9o8EI/AqlWqVuYWZjsxGXW
 3CXcPF2yUn38xpfg6lpkV61WBUcyS8MxT9I9OXh9cAfjZeiOELK6yw/o8tEO5yjdbc3L
 PkIw==
X-Gm-Message-State: APjAAAW7tLpNGUuNkVvaJpSTQFRKENxpb06HmuD3i63UrM88LoYSVgTc
 7kLCd8JcdfXhCOQJW/I/zO2A1GKWCS4=
X-Google-Smtp-Source: APXvYqxPYhsy8i5s0xb2KDoCBw8kpQOpKm/pdqPZtfSV+jb1VQlQX5SoFK5LdWlQpAWaAfyEH6utdA==
X-Received: by 2002:adf:f54d:: with SMTP id j13mr22795495wrp.19.1580142713022; 
 Mon, 27 Jan 2020 08:31:53 -0800 (PST)
Received: from [10.202.0.7] (d5152e8e2.static.telenet.be. [81.82.232.226])
 by smtp.gmail.com with ESMTPSA id e16sm21557976wrs.73.2020.01.27.08.31.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 08:31:52 -0800 (PST)
To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <mailman.27217.1580134584.2486.openwrt-devel@lists.openwrt.org>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <ed6f8dd3-fe44-62e1-f631-4842ff33d373@ncentric.com>
Date: Mon, 27 Jan 2020 17:31:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <mailman.27217.1580134584.2486.openwrt-devel@lists.openwrt.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_083155_286124_24C36E72 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath79: NAND bad eraseblocks in MikroTik
 RouterBOARD 922UAGS-5HPacD
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

Hi Roger,

Can you send me full bootlogs please from both?

I have RB922-5HPnD, not the AC version over here, but I guess the issue 
will also be present over there.

Thanks again,

Koen

On 27.01.20 15:16, Roger Pueyo Centelles | Guifi.net via openwrt-devel 
wrote:
> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
>
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
