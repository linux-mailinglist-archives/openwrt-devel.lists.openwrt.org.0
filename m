Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B40AFEE43
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 16:50:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PBBynZUUaIAv9VKKp4I099MjyY9U+pvty4lSxCwtvUE=; b=d622rYvwXM1pY5GL18ST9zkYH
	v6dhikdD0KH0MBuxX9+MGITznws/2nnPsoDFkM+9X9xsH1Z/tYbtdw3rHUa2so0zWT1oW7YSBpgCV
	BgQVPJajJMEaKPRKwOeEJTexZiI1OPxcBQmb3vdju0WzCwgRObfK0GtoI7VmhY0KR5GpV5pxbguzC
	BJBa85INNMZzrleJ8dg0fZiWVtDngv8aXA5t32HXxAlVhzYVPyR+V5CX6wCiN7tMYgXAoWbA/IhnM
	HBbB6D//qJnp6XSZ8gFwOzw/3YEY1Fha7IofJMJQ52udIEXBcYrU4od73roaHKGN/xvFmV0FcCvSu
	CpWNckvsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0L9-0003dC-Ls; Sat, 16 Nov 2019 15:50:23 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0Kp-0003au-Bo
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 15:50:08 +0000
Received: by mail-lf1-x144.google.com with SMTP id q28so10345347lfa.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 07:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=aFaZW+e49S+yBbwxOQsSRTywijD6ROxPUx918fP1GBE=;
 b=VFMBJRdnOanhqMoUYuYrLkVwCNu4NRmfS7pvP9sJVYd7Kby8hK8WrvvYbZBJZC4onU
 SUYTKHPXkNaW4jHG0d0omBM7jGZi0nwkSbYBwwa82EgQt54P8qd5W68WzfcB8bRiTYUv
 pBy8FLM37INjEuGVmeYMYreXoFhQmmP5EkJbn2NnQ/oi1hdjNlf82vVanlfTunlgoYxh
 iBnisI5HWSmUhMdY90a771JI6U5LlDAl+/23Q3JRIcl2YDTGqTxgVOOiah0SvBeXG2UU
 2cN46u1vCzSkMzGud1h/DKEYQtU+tS+atLwD5sy18j6OBdMU876po5Bpapwl6TCBje5z
 0fDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aFaZW+e49S+yBbwxOQsSRTywijD6ROxPUx918fP1GBE=;
 b=Z6W+8HpqV/MFgDg/jg96Hs3xNByAbMRjxKLZV+aIX9BAd/nZ+Cppj4QJhYwx4s/nAi
 iVQ4JD1/utC5WF/htFxQgDhIX5Q1qfab9h/ChpJsUsauntX7GxXGzDCBVpzJsD/irs/s
 qDINJsE035Kg0Cu2LsgkBHxz/o/T5JUZu1NujZTzPTC53WrPYtkTci3I1ADLXNeuk7ID
 mtMKeU4vXyBOF3B9wxcGjqckLPs7aySKuFgNl7uq/oyxFLmRtKlfVgNo6kLFFe4c7xcY
 I0HO0cVTpUibCVbg2hmEv/v6TbcCTiz0aYtZh6eJgzMiPXF8Ccgb8Dx3hrm4v6hVdIaI
 A6jw==
X-Gm-Message-State: APjAAAVXcFa0eZCl5goMDy8Pi4db1r6RQzRhD56oKoiRX78bt7KNUQQC
 L+JL/HA6dyB3Hj+XM5Tt3+CU32TG
X-Google-Smtp-Source: APXvYqzSvC+lSo1g1EEqwOYIIlSuHUPvCKOOkgAKYDDJbQAqst4pj8pVQ4F/obu00se528h0RaRlEw==
X-Received: by 2002:ac2:5bc2:: with SMTP id u2mr14845113lfn.173.1573919401568; 
 Sat, 16 Nov 2019 07:50:01 -0800 (PST)
Received: from [31.11.183.129] (031011183129.warszawa.vectranet.pl.
 [31.11.183.129])
 by smtp.gmail.com with ESMTPSA id 70sm6356471lfh.86.2019.11.16.07.50.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Nov 2019 07:50:00 -0800 (PST)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20191108120520.1966-1-freifunk@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <e67b9893-6173-de0f-0dc8-e0540adf97c0@gmail.com>
Date: Sat, 16 Nov 2019 16:50:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108120520.1966-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_075007_434322_E7A6AB93 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 08.11.2019 13:05, Adrian Schmutzler wrote:
> This provides a uci system config setting that will be set only
> during initial setup. This can be used by uci-defaults script to
> determine whether they are run during initial setup or after a
> sysupgrade.
> 
> Since the setting is removed again after uci-defaults have been
> processed, it won't be recognized by the user on the running device,
> but can be exploited also for downstream setup tasks.

This looks for me like a misuse of uci configuration and some kind of 
workaround for a missing feature, maybe in procd/ubus?

NAK on this one from me.

-- 
Cheers,
Piotr

> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>   package/base-files/files/bin/config_generate                  | 1 +
>   .../base-files/files/etc/uci-defaults/90_end-initial-setup    | 4 ++++
>   2 files changed, 5 insertions(+)
>   create mode 100644 package/base-files/files/etc/uci-defaults/90_end-initial-setup
> 
> diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
> index b473eba9e9..273561229a 100755
> --- a/package/base-files/files/bin/config_generate
> +++ b/package/base-files/files/bin/config_generate
> @@ -243,6 +243,7 @@ generate_static_system() {
>   		set system.@system[-1].ttylogin='0'
>   		set system.@system[-1].log_size='64'
>   		set system.@system[-1].urandom_seed='0'
> +		set system.@system[-1].initial_setup='1'
>   
>   		delete system.ntp
>   		set system.ntp='timeserver'
> diff --git a/package/base-files/files/etc/uci-defaults/90_end-initial-setup b/package/base-files/files/etc/uci-defaults/90_end-initial-setup
> new file mode 100644
> index 0000000000..779d858d5f
> --- /dev/null
> +++ b/package/base-files/files/etc/uci-defaults/90_end-initial-setup
> @@ -0,0 +1,4 @@
> +uci -q delete system.@system[0].initial_setup
> +uci commit system
> +
> +exit 0
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
