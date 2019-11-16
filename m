Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16889FECE6
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 16:31:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vvE5rxc4uYl1Iz/66iFkg8Ti4N+LonKOXgUVzEtvGCs=; b=Rqx1itNT4IdOYnwdGcmeQOKcN
	dpJYbGz1PdKJbPinP2aV21mFtiMroRT97zxbgpuSut1TdulmXKwcapONzadiMIabZ/XAEnPrvXQJ4
	B44sp9PBVmHlrnBig9ZOzg70WdVkuTEqJ/rit9GGREb+XTUL68WO0PxBgl88TCr0X0/OjHc8RaLtI
	NhlJTvQnogCihZkFZHcoBSygHjuB9eKGkYbv1ASr3vcGbxbw0VR02cxGtxy63+vAy1JntOhdQBEoS
	RX3OPeuMnaxRdhEcecAl9Dv0LeNeI1Q0ZcSKXVCKAU7u1Yh6FessJGSo/vVxJ7soEPR76hTYfkv60
	TFD7migiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW034-0001tx-Rb; Sat, 16 Nov 2019 15:31:42 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW02y-0001tU-Bn
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 15:31:37 +0000
Received: by mail-lf1-x144.google.com with SMTP id b20so10342543lfp.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 07:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=c8l3O+Hqh0FNKCbTLPPufdW/lYEmHE0vIsJj7ZUm5po=;
 b=GZr0hwX5cH+od477ZZkyuY4bXQY2LfUciQ1A3wcOteYoPSmy7OwfFwHJ+U5/qvbQBB
 pcCRKM0Ty+JI4mosnFj1mQnhvDjAylCMapAkBqzRGK6NSz8rf+7ib5WCi62f54kZHEUI
 B62Q6Nmao+SYUdEi6N64CcV74JDZz+M1BsltVm3diuI50RYRzqXqw2gEZpbuYSNHxucX
 znBQtDjVtXiWa5AUss3CifbPRa/nrC08sV12bpvxIhzq+hiCxNTvSDJNfXYZf77Hpj7F
 A29LbGS7/jwFMTMFzDybQDj1P7ZoyyNdnY+xjl3L/A5dgPfk6+608TTiWBUltLOlRFTt
 7inA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=c8l3O+Hqh0FNKCbTLPPufdW/lYEmHE0vIsJj7ZUm5po=;
 b=f+U+Wid/aYvbyBzk9+SprGdzaNaHiil+Jjm6hIa5SRziUU6Ugzu8U2Luvy3aw7fX2X
 LK3mhIfW3zvL3vuPgAcbrU4fCJ2ayBf3mnFtGmNbJXRf9xvHNUE0M7KY5vXeBMYSF1Hh
 lJAY2w37XpWXUvMY8DIoXajtEq0Q00DDSZQnoMPbhGFK6OF1bI3ohYfGy+uPRZjrllcP
 oNca9RlTIrLh5GRfbXXl4Rxh/qedWlP/6lBCbT7h7v8uHq1mZKv9at+gqRPgnH4jAiF1
 NoEyH9Q769rd5ETPVx4/MfnMZ60ss3cbdtumApuyJCiRqg+KdOAlxEzblp17uMHlLDhZ
 6hwg==
X-Gm-Message-State: APjAAAUcnDPJjOevTWV1vK3+LaknMIGYXax8OKzV2CjcTQlNYszAzV0t
 KS3kv+uve7vCuzEtxE5XzLekCaGe
X-Google-Smtp-Source: APXvYqzObMeA0vuRLWpMW4ONeYEISqcEBJmLWQtzkmm5CjuUVr9lXNJxMab6NDIqrscg2Xo4a0zQ2A==
X-Received: by 2002:ac2:5144:: with SMTP id q4mr15355499lfd.36.1573918293669; 
 Sat, 16 Nov 2019 07:31:33 -0800 (PST)
Received: from [31.11.183.129] (031011183129.warszawa.vectranet.pl.
 [31.11.183.129])
 by smtp.gmail.com with ESMTPSA id e14sm5657125ljb.75.2019.11.16.07.31.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Nov 2019 07:31:32 -0800 (PST)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <f05be16b-83ba-6640-c0e8-04e03877e589@gmail.com>
Date: Sat, 16 Nov 2019 16:31:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_073136_426548_49F15ED7 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 0/2] introduce label_mac into hostname
 and SSID
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

On 08.11.2019 12:48, Adrian Schmutzler wrote:
> This patchset will introduce the label MAC address into the _default_
> hostname and SSID of OpenWrt devices. Devices installed after these
> commits (or upgraded with sysupgrade -n) will have their hostname and
> SSID set to
> OpenWrt-ddeeff
> where "ddeeff" is the EUI of the label MAC address aa:bb:cc:dd:ee:ff.

As this is something which touches essential system setting 
(identification), I would really like other team members to join the 
discussion before it sneaks in again. Especially because this was 
already merged and reverted later, after short discussion on IRC.

 From my point of view, I'm only worried about all the consequences we 
don't know about, so I would prefer to have this one _optional_.

On the other hand, I'm fine with the SSID change but I see it's not 
going to be that straightforward to implement.
Also, what I'm thinking about here is which one MAC should be used for 
the SSID name. The 'label' one which is not available on all devices or 
maybe the 'phy' one?

> For devices where no label MAC address has been specified, hostname
> and SSIDs will use the former default "OpenWrt".

And this is probably the biggest issue I have with the whole idea behind 
'label_mac'. As I understand the motivation, I don't like the fact it's 
not specified (and probably would never be) for all devices so we will 
have here inconsistency (in essential system settings!) and might end up 
with confusion. Maybe that's something which should be handled by 
downstream users/projects (and AFAIK, it is already).

-- 
Cheers,
Piotr

> 
> Implementing the EUI is intended to make identification of a
> particular OpenWrt device easier. The label MAC address qualifies
> for this as it is easily visible on the case and thus apparent to
> both educated and uneducated users.
> 
> Adrian Schmutzler (1):
>    base-files: rename SSID with EUI of mac address
> 
> Rosy Song (1):
>    base-files: rename hostname with EUI of mac address
> 
>   package/base-files/files/bin/config_generate  | 16 +++++++++++++-
>   .../etc/uci-defaults/15_wifi-ssid-mac-address | 22 +++++++++++++++++++
>   2 files changed, 37 insertions(+), 1 deletion(-)
>   create mode 100644 package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
