Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113511A0E62
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 15:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YDEJOkruZPLOZTTdjKh1K1omi5QDPo3rgG0V27Fa/Mc=; b=HSbeUY7iVnleJp6fA8DmEHeoj
	oHaSseKQnM86fN3mJSuBiXaSmokj5JX432poJh30TN1hCHq1QRfUiffUJ49nh1Iox0EsV9W1SUDdj
	u2W53dxgANgbpXvxrflc8t5XWW+Ss7bUe5aIZD+39OxDX1xFSmp8ZW8PCKzYsTChf57RJL6AMI0fn
	CoQsv2S3baf4GxZ087sn58RcmoE5NqY0QUumLUg3BbSNSkhp5nUhNTafzYHbnYyfYpFXTpnYwpzRJ
	M27VRnAzD9ju7jwZQOTOiulfvtGQ/Jljm33BdG7SKYooutcpDdiRDNOjjIOIB1iGlKR6WhGXbxXb8
	s+8WQ23/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLoJP-0006VM-99; Tue, 07 Apr 2020 13:30:43 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLoJE-0006UZ-9n
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 13:30:33 +0000
Received: by mail-lf1-x142.google.com with SMTP id l11so2373506lfc.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 06:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hPd0e9wSqrEDeGQ/+rftKX2cYTORRQcyPXufydP25Ug=;
 b=PZ6pegfQ+BSU3nP9Uzeb8Vjm/pI70yiIsosweUpx5fhPVWaMClGn5TNO4KgFbGosib
 fhL58NQYca69CzN2UW8+JeCqDWhKZTP5FBvdc/BcL5KBk6VrmzYKSvDoeTJu3YL1GI8q
 f/+lDgSEHAHxkvQW9cVV1A5yph89RWXqELwqjI0at8xBqZEt7eF9bqr1wgOBKbDsrxs4
 g9hbfT8fiqJLnVFxXKeoblLYnE3G+gDyx1gxR8YvJbCSNU4KZOjP4DP+DfDLHyxafCJx
 FQvx2jgLefMiknyhsXZ2eYBHCaRw3qatHo/2mh69fVCXBvFiUXqz+AVA1W2y42c7uCi9
 95iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hPd0e9wSqrEDeGQ/+rftKX2cYTORRQcyPXufydP25Ug=;
 b=VMcUCW+LIfnQ40H52aWsaWOeFC+ubat5byHwDO4O4n0QIbeQO4t0t0uyFaAi0FLxla
 GAjvjTgKL6EHvkXERWhxlYky2fUt4qoNJ4sIGAJYNRQN2LqvcPP2LGxCuTxX+0H4v5Zr
 r2Y9c69niBrKYN5pJW9hGEHtj16cV/ZC2QViYOKkm40VwEU0m3HIxQtg/yJ4WEhuJ+AM
 CnbFHihicZZZkaoTy1pnr00+fsy0+Q53JkSC2Ra6bqREwKgmkzxSwBwMdqui9JyZFLxH
 hx0szvZWBxQ4CrVoW7ktYtcmTViGuZPJz/g2qctyg3XckWPrhEh5tpqTLy9PuMBM/8sD
 644A==
X-Gm-Message-State: AGi0PuZfBCreFZYyRYvmpXx5r53rbWfZbc74Iy2egLyaze2R1ob6FrSH
 q+b1f9bkkbclWcHBPzjjBdk=
X-Google-Smtp-Source: APiQypKWXgCFKqUlsG7MQcUTDUZh0rEUWBxCpS8it7gEAZCJx9a3NzPG+Kh3meTg48vj2RHdzIp89w==
X-Received: by 2002:ac2:5930:: with SMTP id v16mr1523565lfi.103.1586266230007; 
 Tue, 07 Apr 2020 06:30:30 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id 22sm11670752ljq.69.2020.04.07.06.30.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 06:30:29 -0700 (PDT)
To: Dan Haab <riproute@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20200406231439.88217-1-dan.haab@luxul.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <6e91a675-87d1-786c-9d21-f388efa86770@gmail.com>
Date: Tue, 7 Apr 2020 15:30:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200406231439.88217-1-dan.haab@luxul.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_063032_365304_289A6D15 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul FullMAC
 WiFi devices
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
Cc: Dan Haab <dan.haab@legrand.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 07.04.2020 01:14, Dan Haab wrote:
> @@ -87,20 +96,28 @@ bcm53xx_setup_macs()
>   	case "$board" in
>   	asus,rt-ac87u)
>   		etXmacaddr=$(nvram get et1macaddr)
> +		offset=1
>   		;;
>   	dlink,dir-885l | \
>   	netgear,r7900 | \
>   	netgear,r8000 | \
>   	netgear,r8500)
>   		etXmacaddr=$(nvram get et2macaddr)
> +		offset=1
> +		;;
> +	luxul,xwr-3100v1 | \
> +	luxul,xwr-3150-v1)
> +		etXmacaddr=$(nvram get et0macaddr)
> +		offset=5
>   		;;
>   	*)
>   		etXmacaddr=$(nvram get et0macaddr)
> +		offset=1
>   		;;
>   	esac

This seems like a bit of code duplication but nothing too scary at this
point I believe. We can refactor if if it gets worse. Thanks!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
