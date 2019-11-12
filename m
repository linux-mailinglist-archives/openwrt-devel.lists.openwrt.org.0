Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53F6F8C3A
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 10:51:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnHu7DQNC/PP2+7fLkoQLoVKSizEF0jgnjtbQHiBhgY=; b=h7ugXmebNX0+YG
	tt91fBOZk0lrZiUzdiuEzWaEFMpqB/PjxCqpSe62kSNxb2XpNMv+R7XMmVB6qJsIVrK/syY0jj2cA
	I9D9meA/XsyBTZhi8Ma7HTsko74ktVGI8vrWEGFhJrGPKC+96U9yuxREHh+wQ8/WUTNA3HmSbbH87
	ZBJLAXMDlVJR3lLJbiCW8416Q+GRcayvoa9wz+Kmqa4aXyoI1DHF9PHsqQ+MVP48ftSJgBvdWhn/X
	3hXRE2EUmYRbdXQA7X2q823D53Dfo93dST304a4W9jwtXxP967OPXDmU7mHh1B5/zG/2p6k7K5ipV
	HBT9d9LRfQblca/iveVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUSpW-00043x-9U; Tue, 12 Nov 2019 09:51:22 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSpP-000430-Mk
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 09:51:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QmRpoeNf0qStqFgvQzz9uo73+9gz9IvAsfnCRJbl5zE=; b=avgNhADHIgs8/PTX1wS6Wg/Rxh
 g1zNLLx7Lra3MmZP33ys7aCF1UZ5PM+tjAr6cHA8dcQG0SjwpAV8v42ARpiPu3/0v/LdtK3XKcUaw
 lp0384HrisEdUwycyZ7MFrYGU9x3vvLBYiDV2Raw1lKRR3QJjugGr3TwKcbDMh+/an3w=;
Received: from p4ff13fe7.dip0.t-ipconnect.de ([79.241.63.231] helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1iUSpL-00034M-CE; Tue, 12 Nov 2019 10:51:11 +0100
To: Paul Spooren <mail@aparcar.org>, openwrt-devel@lists.openwrt.org
References: <20191112093106.26475-1-mail@aparcar.org>
From: Felix Fietkau <nbd@nbd.name>
Autocrypt: addr=nbd@nbd.name; prefer-encrypt=mutual; keydata=
 xsDiBEah5CcRBADIY7pu4LIv3jBlyQ/2u87iIZGe6f0f8pyB4UjzfJNXhJb8JylYYRzIOSxh
 ExKsdLCnJqsG1PY1mqTtoG8sONpwsHr2oJ4itjcGHfn5NJSUGTbtbbxLro13tHkGFCoCr4Z5
 Pv+XRgiANSpYlIigiMbOkide6wbggQK32tC20QxUIwCg4k6dtV/4kwEeiOUfErq00TVqIiEE
 AKcUi4taOuh/PQWx/Ujjl/P1LfJXqLKRPa8PwD4j2yjoc9l+7LptSxJThL9KSu6gtXQjcoR2
 vCK0OeYJhgO4kYMI78h1TSaxmtImEAnjFPYJYVsxrhay92jisYc7z5R/76AaELfF6RCjjGeP
 wdalulG+erWju710Bif7E1yjYVWeA/9Wd1lsOmx6uwwYgNqoFtcAunDaMKi9xVQW18FsUusM
 TdRvTZLBpoUAy+MajAL+R73TwLq3LnKpIcCwftyQXK5pEDKq57OhxJVv1Q8XkA9Dn1SBOjNB
 l25vJDFAT9ntp9THeDD2fv15yk4EKpWhu4H00/YX8KkhFsrtUs69+vZQwc0cRmVsaXggRmll
 dGthdSA8bmJkQG5iZC5uYW1lPsJgBBMRAgAgBQJGoeQnAhsjBgsJCAcDAgQVAggDBBYCAwEC
 HgECF4AACgkQ130UHQKnbvXsvgCgjsAIIOsY7xZ8VcSm7NABpi91yTMAniMMmH7FRenEAYMa
 VrwYTIThkTlQzsFNBEah5FQQCACMIep/hTzgPZ9HbCTKm9xN4bZX0JjrqjFem1Nxf3MBM5vN
 CYGBn8F4sGIzPmLhl4xFeq3k5irVg/YvxSDbQN6NJv8o+tP6zsMeWX2JjtV0P4aDIN1pK2/w
 VxcicArw0VYdv2ZCarccFBgH2a6GjswqlCqVM3gNIMI8ikzenKcso8YErGGiKYeMEZLwHaxE
 Y7mTPuOTrWL8uWWRL5mVjhZEVvDez6em/OYvzBwbkhImrryF29e3Po2cfY2n7EKjjr3/141K
 DHBBdgXlPNfDwROnA5ugjjEBjwkwBQqPpDA7AYPvpHh5vLbZnVGu5CwG7NAsrb2isRmjYoqk
 wu++3117AAMFB/9S0Sj7qFFQcD4laADVsabTpNNpaV4wAgVTRHKV/kC9luItzwDnUcsZUPdQ
 f3MueRJ3jIHU0UmRBG3uQftqbZJj3ikhnfvyLmkCNe+/hXhPu9sGvXyi2D4vszICvc1KL4RD
 aLSrOsROx22eZ26KqcW4ny7+va2FnvjsZgI8h4sDmaLzKczVRIiLITiMpLFEU/VoSv0m1F4B
 FtRgoiyjFzigWG0MsTdAN6FJzGh4mWWGIlE7o5JraNhnTd+yTUIPtw3ym6l8P+gbvfoZida0
 TspgwBWLnXQvP5EDvlZnNaKa/3oBes6z0QdaSOwZCRA3QSLHBwtgUsrT6RxRSweLrcabwkkE
 GBECAAkFAkah5FQCGwwACgkQ130UHQKnbvW2GgCfTKx80VvCR/PvsUlrvdOLsIgeRGAAn1ee
 RjMaxwtSdaCKMw3j33ZbsWS4
Message-ID: <660d3ce3-4190-8f28-dbec-4acdce65412f@nbd.name>
Date: Tue, 12 Nov 2019 10:51:10 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191112093106.26475-1-mail@aparcar.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_015116_058594_EF8DE10D 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: separate signing logic
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-11-12 10:31, Paul Spooren wrote:
> This separates the options for signature creation and verification
> 
> * SIGNED_PACKAGES create Packages.sig
> * SIGNED_IMAGES add ucert signature to created images
> * CHECK_SIGNATURE add verification capabilities to images
> * INSTALL_LOCAL_KEY add local key-build to /etc/opkg/keys
> 
> Right now the buildbot.git contains some hacks to create images that
> have signature verification capabilities while not storing private keys
> on buildbot slaves. This commit allows to disable these steps for the
> buildbots and only perform signing on the master.
> 
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
> v2: fix missing endif if base-files/Makefile
> 
>  config/Config-build.in      | 12 ++++++++++--
>  include/image-commands.mk   | 13 ++++++++-----
>  package/base-files/Makefile | 18 ++++++++++--------
>  3 files changed, 28 insertions(+), 15 deletions(-)
> 
> diff --git a/config/Config-build.in b/config/Config-build.in
> index 872e5c12ab..c6591708a2 100644
> --- a/config/Config-build.in
> +++ b/config/Config-build.in
> @@ -37,13 +37,21 @@ menu "Global build settings"
>  		  - Enabling per-device rootfs support
>  		  ...
>  
> +	config INSTALL_LOCAL_KEY
> +		bool "Install local usign key into image"
> +		default n
> +
>  	config SIGNED_PACKAGES
>  		bool "Cryptographically signed package lists"
> -		default y
> +		default n
> +
> +	config SIGNED_IMAGES
> +		bool "Cryptographically signed firmware images"
> +		default n
>  
>  	config SIGNATURE_CHECK
>  		bool "Enable signature checking in opkg"
> -		default SIGNED_PACKAGES
> +		default y
>  
>  	comment "General build options"
Please make all of these default to 'y if !BUILDBOT' in order to not add
extra inconvenience for people doing their own builds.
Just like before, builds should trust packages/images generated from the
same tree by default.

- Felix

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
