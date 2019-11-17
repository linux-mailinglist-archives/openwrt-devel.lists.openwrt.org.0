Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C694FF9B8
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 13:55:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=olPyAti+pKHYReC+qtNv7ORLUqarhCXfRcE+KNorIKQ=; b=Av9vsPpoN/rND8JI4B6+h/Ktc
	coNm9xBUr0W3WchXyMYXmElTB8e1Uh7x9SW6tqVZNJNm1JkKguGWef0vJTvSOVJZgttlCWw7u9EA/
	Ih5AhVLGque1no0i6f2/5IaWAQY9t7qdgq9F3+mRCUFThtGTpCF1qDvWbL6kO6ftpLOcq+uHHlCOe
	PkjVQDqrPk+aYgZTo4aRCt4bJMtH+kl1ltZwrpXJuf3IHV1nEwGCxVxKSZ0rDtYyeEUQo2MJI6eZg
	SC3ngzI04yaGSHDZD/SDg2jMnYoa8EqaaruiJG8dytlnlwvf5uWdV974+MVIMhaVwOkvkK0Q1w7z6
	JR18a0bBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWK5e-0005jl-2u; Sun, 17 Nov 2019 12:55:42 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWK5X-0005iz-Es
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 12:55:37 +0000
Received: by mail-lf1-x144.google.com with SMTP id l14so4894022lfh.10
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 Nov 2019 04:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=I7DDWZTpTQtzGaFUOda8ZJJH4HwYFuOaGllOfx3kz5A=;
 b=BF0/gVenJTleLSe53y9BRYZCqJkPHmgvs3Mri6rKNB+lR8n5VDWSxHmESRZsBrzw+W
 e8U9jGIItz3ndDvmWPos3RzHcuPjwmoFkItfwtI/0kM2Yhzwmchy3ap3gImzlP1Dcr5d
 njVdPrQlruV7xBvJwxLmq5spEMqnB2zlAukyUkT/pBQXxNLHb0LJNWTYUFEKVONc9aQT
 vlzLTouCKOEYRhXPhOBVXDkD8oImaf+8vytZi9TvytE4ksEKzse+1u5Xa0dihiIB5PR4
 9JyScCCuNt1uyUWpnYw8xIV7P8kmmWIBYvhHRhhjZTBNvvzHCOJn/wWV6x8250+7u9Vb
 N6Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I7DDWZTpTQtzGaFUOda8ZJJH4HwYFuOaGllOfx3kz5A=;
 b=Af5j/7+szd1gJIeT/CRymp2HSfMNqlaQu1vxWHaGlI4GIWLRWHluce3siXg/NN4GPy
 J1CYVFoQxmyPXO4NxTmCMYQ4LBltz7ewimNkOvXvpcfyyAzbXg0ooKKWrW+xK0K74tMR
 JzvEZ7WX27ggCdvLf1SwP4BIH3eiCfP37TEoy4m9H+eSvq42KKBHHZDYWr01XrIzwFQa
 6LSO2Bz17jyvSDJSFLXDf+LGWBAKiiYOmTIy6y/ADWyKnRkz5YUDOD8IY80V7F9pwnni
 0meUMpdx0GM3ZqwMoqg4C0koZawLM/3NaYGAXDEtAH5zO9Pb3e6m8kLYcV2wfy2TbpY2
 w+zQ==
X-Gm-Message-State: APjAAAWEn6oNppCDaU7+pHthnSPEhazk0RP8VglrIYFhEp33Fiih6m7q
 eBfQiFbzhuFPDyXMhYHYXvA0pGQB
X-Google-Smtp-Source: APXvYqyjKWnwHT0hy5zogQHEA9Ms0HF9lDdywx2LCnFz/h6XFhTzWmS16hj5CK+0PZoPtq/J8+dC1A==
X-Received: by 2002:ac2:5442:: with SMTP id d2mr17182657lfn.161.1573995331504; 
 Sun, 17 Nov 2019 04:55:31 -0800 (PST)
Received: from [31.11.183.129] (031011183129.warszawa.vectranet.pl.
 [31.11.183.129])
 by smtp.gmail.com with ESMTPSA id w6sm6732166ljo.50.2019.11.17.04.55.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Nov 2019 04:55:30 -0800 (PST)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20191108120520.1966-1-freifunk@adrianschmutzler.de>
 <e67b9893-6173-de0f-0dc8-e0540adf97c0@gmail.com>
 <009d01d59cd6$ad2d01c0$07870540$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <67f09cd9-ca83-9fe9-1154-9ca0a944a126@gmail.com>
Date: Sun, 17 Nov 2019 13:55:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <009d01d59cd6$ad2d01c0$07870540$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_045535_522940_450D051E 
X-CRM114-Status: GOOD (  24.87  )
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
 provider (pepe2k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: indicate initial setup
 by uci system config option
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

On 17.11.2019 00:36, mail@adrianschmutzler.de wrote:
> Hi Piotr,
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of Piotr Dymacz
>> Sent: Samstag, 16. November 2019 16:50
>> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
>> devel@lists.openwrt.org
>> Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: indicate initial setup by
>> uci system config option
>> 
>> Hi Adrian,
>> 
>> On 08.11.2019 13:05, Adrian Schmutzler wrote:
>> > This provides a uci system config setting that will be set only during
>> > initial setup. This can be used by uci-defaults script to determine
>> > whether they are run during initial setup or after a sysupgrade.
>> >
>> > Since the setting is removed again after uci-defaults have been
>> > processed, it won't be recognized by the user on the running device,
>> > but can be exploited also for downstream setup tasks.
>> 
>> This looks for me like a misuse of uci configuration and some kind of
>> workaround for a missing feature, maybe in procd/ubus?
> 
> Maybe I'm not familiar enough with it, but I currently can't think of a method indicating a fresh installation with procd/ubus.

I just don't think uci is the right way for this job. It's used for 
configuration, not for storing and clearing some flags about system 
state. Your way of using uci for that could introduce false positive 
results.

I would look at preinit stage, maybe checking if the writable filesystem 
(rootfs_data) is created/ready could be used for detecting the 'initial 
setup' state (I'm just not sure if that could work across all targets).

Either way, maybe an env variable, like we have for initramfs images 
(INITRAMFS set to 1), would be better?

-- 
Cheers,
Piotr

> 
>> 
>> NAK on this one from me.
> 
> Similar to the label MAC hostname/SSID stuff, this was just a nice-to-have thing for me. I will mark both patches as rejected.
> 
> Best
> 
> Adrian
> 
>> 
>> --
>> Cheers,
>> Piotr
>> 
>> >
>> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>> > ---
>> >   package/base-files/files/bin/config_generate                  | 1 +
>> >   .../base-files/files/etc/uci-defaults/90_end-initial-setup    | 4 ++++
>> >   2 files changed, 5 insertions(+)
>> >   create mode 100644
>> > package/base-files/files/etc/uci-defaults/90_end-initial-setup
>> >
>> > diff --git a/package/base-files/files/bin/config_generate
>> > b/package/base-files/files/bin/config_generate
>> > index b473eba9e9..273561229a 100755
>> > --- a/package/base-files/files/bin/config_generate
>> > +++ b/package/base-files/files/bin/config_generate
>> > @@ -243,6 +243,7 @@ generate_static_system() {
>> >   		set system.@system[-1].ttylogin='0'
>> >   		set system.@system[-1].log_size='64'
>> >   		set system.@system[-1].urandom_seed='0'
>> > +		set system.@system[-1].initial_setup='1'
>> >
>> >   		delete system.ntp
>> >   		set system.ntp='timeserver'
>> > diff --git
>> > a/package/base-files/files/etc/uci-defaults/90_end-initial-setup
>> > b/package/base-files/files/etc/uci-defaults/90_end-initial-setup
>> > new file mode 100644
>> > index 0000000000..779d858d5f
>> > --- /dev/null
>> > +++ b/package/base-files/files/etc/uci-defaults/90_end-initial-setup
>> > @@ -0,0 +1,4 @@
>> > +uci -q delete system.@system[0].initial_setup uci commit system
>> > +
>> > +exit 0
>> >
>> 
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
