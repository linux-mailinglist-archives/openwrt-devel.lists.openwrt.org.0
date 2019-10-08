Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BF9CFABC
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 14:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=94DJ1DO3OYJiIydEigWc29vboTNtDMLsdACU8kmaBrQ=; b=MKE67v1x25Pf7FTy73lZSsy0k
	feThVJiGPZC16rThiFLiKgCLT6t9qANVbnRXGi0JXPXszNylfkMn0nhawboDG815edgEzQLFEFUue
	53885Dzd/NS3Z/NMpck8HUBsM6fjfxkUvg/tUIwJrRSJicglzxcRXE91210OU2YkeXhTu9wYOFYKB
	Xm4X+5ht6kHRfQ4xpdo/9YU7uUl72ucPXxvqFa9ySGfXs4rMXuCn9pEYgsDdfY2KEepnQrHWo88O3
	DBwjIdUo0QpbTPFcFKPf2SzfsOMWWalZG1/i+fm1saysa7uBZNmzZvuTS+MgLcnjIBCEtEFQCGK9o
	0VIRwiHEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHp4u-0007rn-4t; Tue, 08 Oct 2019 12:59:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHp2Q-0005eo-52
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 12:56:28 +0000
Received: by mail-wm1-x342.google.com with SMTP id r17so2327282wme.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 08 Oct 2019 05:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=di+T+o0uRxc/ZQ04HzVghnH+M5r4IWJCdKeF8dVU9wE=;
 b=OALuGqwI7Azug4uqwE1vcnjL0z/vJPe4JGSPqM4R6/F+3+fVha+8Vv2X4MDZnQCyIN
 +6QXHT7uk8F8FYYfc0ebpXgjp8AOaPGnjbISOBGwXgRUQYPUrlF4dyxi6/bMZabo9ML+
 akroIUcF6pxXVCtwyZbVxRXQjRKeFOag60QQ/xsL6S5Sdhw8uF7relXn9tvv99RQj8ZD
 03TcEyM3KZCEYLcZa7/3AUNWqGSwscghd9SWvMjIxG9h25UclJkWF/2edy3qurfWFERe
 EWIa8z2JwBvq6Ts5TEfaAm1IGaCo6jm9/pgoJQkTAnjFeK8ZAvdp+5Qc2AU/lcCx7nxf
 b09Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=di+T+o0uRxc/ZQ04HzVghnH+M5r4IWJCdKeF8dVU9wE=;
 b=oZAvsn+5CGJhpUQiTg3uNJv5pt9mGY7YLasGwY9fE5NPGzlyDuNHrnVA9MEpNpOjSj
 MuTlU7pxge3536VXkeEpaqfaq5KflkzhXvG0OxnrGl34X0a8WtCiak/LBJjrYICCc12F
 Uiv0/k1g5c2mnMKYcMPq2Va3ejdbpi80NQ4Oi2IKMWwlBrNgOXgZJmR0EZK0qHn5Vksa
 5sMXaL3uHMt8N866Q2l+ntLK6GY/CumBAaXGtYT3SBsb6v1Jbm9ZgomL/RC0l3E/kY0C
 znlhszV1zelyxF6wHmj9tc1kMYZbTgclI9Jo9X/D7cDAUS2AFSSNi92rPKJdy4HlF5/F
 U4VA==
X-Gm-Message-State: APjAAAU274afClUg4NRIVb5dXrXYKoc8Jr2d2er2TTvDK8O4in5ADPdo
 2to6ZlxetLhcItH7Wp2krwzQoesH
X-Google-Smtp-Source: APXvYqwjvg6PcA0od8Q/vMrc3Rhg0v4dI7KYSi0cLAEeZ5WzvfNp4pEOxN7KunSeFegVbOSVVBSadw==
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr3934825wmc.113.1570539383301; 
 Tue, 08 Oct 2019 05:56:23 -0700 (PDT)
Received: from [192.168.43.29] (mi-18-57-118.service.infuturo.it.
 [151.18.57.118])
 by smtp.gmail.com with ESMTPSA id l11sm3039871wmh.34.2019.10.08.05.56.22
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 05:56:22 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <20191008010225.8822-1-rosenp@gmail.com>
 <944A6623-FEF1-4AC9-9A1E-B7D3566CF8A9@oranjevos.nl>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <080086a1-b4dc-1ef3-2bc5-cafea5640421@gmail.com>
Date: Tue, 8 Oct 2019 14:57:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <944A6623-FEF1-4AC9-9A1E-B7D3566CF8A9@oranjevos.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_055626_255816_01404337 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/8] ncurses: add cygwin compatibility
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


On 08/10/19 12:14, Paul Oranje wrote:
> Hi,
>
>> Op 8 okt. 2019, om 03:02 heeft Rosen Penev <rosenp@gmail.com> het volgende geschreven:
>>
>> From: Alexey Loukianov <lx2@lexa2.ru>
>>
>> * Properly handle ".exe" suffix for cygwin.
>>
>> Signed-off-by: Alexey Loukianov <lx2@lexa2.ru>
>> (bumped PKG_RELEASE)
>> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> Two questions:
> Is there any cover to this series of 8 patches that seemingly aim to add cygwin compatibility ?
> And why would this project ever need cygwin compatibility, which will likely require quite some maintenance efforts ?
>
> Any effort to make .exe files callable senses like getting into troubled waters, even if more analysis would prove such fears aren't warranted.
>
> In short: to what purpose, what use-case ?
>
> Regards,
> Paul
>
>
Yeah it seems these patches are for using the build system with cygwin. 
I think there should be more explanation on why you want that.

-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
