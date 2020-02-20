Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14CE1665C1
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 19:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SSobXH7jMed1wkMDVb3xEsiicES5YBVKSVWGOiMwI+8=; b=IsiPVK6HGK0x9Lra+TuZDIrJa
	muqv3uuD8Rdkxj4gJ9V9u73+8fmtT+rSNYmhUrF5FYvA6qT5ej1gXQ6vgbrmT4fTrhC1+m9f+spMJ
	BLVly6a0gz8BlW17hahX+r0hKBlDe0TFyeQBonyBt3GvvDZaXGKEg0kNOe0iXkM27LJ27gJ3/L2kv
	nH4sciuwhgrG700Q9yxDRwkerZwgDN0dSRtmOMjSKeaD30PYw5e/XZ3sHnibCPPX3k03uqNVr0sks
	dIfByjbW7hoOaGB0V9rIp+Z5g7RRCpSB5g0h7pJt3dc635NVqXSHORycu3NTFZiz4J4vC8DeUKtQm
	QwxCYz2Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4qA6-000491-MJ; Thu, 20 Feb 2020 18:02:58 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q9z-00048a-8y
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 18:02:52 +0000
Received: by mail-lj1-x243.google.com with SMTP id w1so5190577ljh.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Feb 2020 10:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ehVXWPA8AEJttCd2EHCs+dbA0eidqSAJE+BfLRPB184=;
 b=cuOvm62VhysdI6j6yapOFE94Lov9h5T1Lnx9wOjOV30QXWRLv376OFxa3KepXOm/VJ
 qcUaNqf9PslvVzZT9E6xnhH9oZQs/VsZRkZJBZg3FmNFjMT76wRQ+G583NPC3ZBtiEaA
 3L1OV0I7J0wmZ4jakps+l9TqgrSf24/SE+bP/+8z7BTee/ix0Qr/3wPKA2E88ki/ecPy
 /IUBwU+IR9hAGstQwPxCi1xyn3T0mmGPEyvi9o5NchY/K7qXoV+My8y3bWunGdd3OukX
 X3WxCNd5ALBpTBq368JnW58ntZRwGyd7vW1dFi9O4yzw10VdPgVFchc6oNMxPwciRaa2
 nEIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ehVXWPA8AEJttCd2EHCs+dbA0eidqSAJE+BfLRPB184=;
 b=jPov+w8BFo5hF/BCbjJJP45frvAXYyc9f5DQ6yTnE4+7knJo0EfeXLGROcQULQKa9g
 +30yN8iCqIEIw1Fzxw0HzHa+loqAkE+V7YvHD16o8V9kjNKdalv28T8XDdOMvPmC3jeU
 APJcI/b2tG8cPwnA9BDxV+lnVq7b03K6OTWH20XCzCy8WAKD/AE8sYbm04rKPPaopPNQ
 lR3BiEOp/51SUmTUmTHckzCBX7UToXDcgIEmiv2DkmF4SsfX7rEgLWsaC32XPJU/t/b/
 3WMJN24nwq+UkUcqsDvoDUrRcwvTlXjTnu2AI89tyYBuu3iF8uwnZGcEpnRb2SuRgDF3
 ToWQ==
X-Gm-Message-State: APjAAAWgVLa6jEI5N593ZlbU5xUI+W6xli2gGv5cIptsNwFnjOmzoP7Q
 w7kCmbimHgpbCPdGxEKoryowNXbN
X-Google-Smtp-Source: APXvYqwWgkBz/F1GwEvgZaonrlOtNaOuP1529R6H1XQ0imZFPrl2ApjpjGgLuN9qOUMSCbK3Vjui/g==
X-Received: by 2002:a2e:7e11:: with SMTP id z17mr19728941ljc.279.1582221768648; 
 Thu, 20 Feb 2020 10:02:48 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id u11sm129880lfo.71.2020.02.20.10.02.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 10:02:47 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200220175218.33593-1-freifunk@adrianschmutzler.de>
 <20200220175218.33593-2-freifunk@adrianschmutzler.de>
 <02dacc16-3bf9-26d5-e1c7-48ed1a57ff63@gmail.com>
 <010501d5e817$99e940b0$cdbbc210$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <de82d3af-43b6-10ca-9df1-df09ba7b4807@gmail.com>
Date: Thu, 20 Feb 2020 19:02:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <010501d5e817$99e940b0$cdbbc210$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_100251_339615_708AA348 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] rssileds: restrict package to
 targets where it is used
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

Hi Adrian,

On 20.02.2020 19:00, Adrian Schmutzler wrote:
>> -----Original Message-----
>> From: Piotr Dymacz [mailto:pepe2k@gmail.com]
>> Sent: Donnerstag, 20. Februar 2020 18:58
>> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
>> devel@lists.openwrt.org
>> Subject: Re: [OpenWrt-Devel] [PATCH 2/2] rssileds: restrict package to targets
>> where it is used
>> 
>> Hi Adrian,
>> 
>> On 20.02.2020 18:52, Adrian Schmutzler wrote:
>> > It does not seem very sensible to provide the rssileds package
>> > on targets without corresponding LEDs, so restrict it to the
>> > targets where it is used at the moment.
>> 
>> This package isn't hardware related and shouldn't be limited to targets
>> where only officially supported devices make use of it.
>> 
>> Thus, NAK from me for this one.
> 
> I assume that's only for 2/2?

Yes, only this one (patch).

-- 
Cheers,
Piotr

> 
>> 
>> --
>> Cheers,
>> Piotr
>> 
>> >
>> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>> > ---
>> >   package/network/utils/rssileds/Makefile | 2 +-
>> >   1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/package/network/utils/rssileds/Makefile
>> b/package/network/utils/rssileds/Makefile
>> > index 7a59314693..c8e8f39de9 100644
>> > --- a/package/network/utils/rssileds/Makefile
>> > +++ b/package/network/utils/rssileds/Makefile
>> > @@ -18,7 +18,7 @@ define Package/rssileds
>> >     SECTION:=net
>> >     CATEGORY:=Network
>> >     TITLE:=RSSI real-time LED indicator
>> > -  DEPENDS:=+libiwinfo +libnl-tiny +libubox +libuci
>> > +  DEPENDS:=@(TARGET_ar71xx||TARGET_ath79||TARGET_ramips) +libiwinfo
>> +libnl-tiny +libubox +libuci
>> >     MAINTAINER:=Daniel Golle <dgolle@allnet.de>
>> >   endef
>> >
>> >
> 
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
