Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27D71E0871
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 10:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygNi5bsmjkLzoz10k02Sdy9JLAcNERV59jlQn4LhhbM=; b=DNgSfUz6L1eGlm
	9is0BBsPRk8svOm57Z1+e3ZjgaaWLEARfatQgGwv9bnPqwiaum2A6uUOhd5gdGxpfUhK8Di0adbfQ
	nQy+lYvPcAoxgqbBkpCNiHgpSsDPS9WLcCt4G0lncZ5csaVF7cB1eS3vU4+YBtLNN3xtfeE4oBL3X
	HBBZqaaKQTgbzRRtRZJkR2+6eT08bv11U/0B83VK/g+zyqfPP0C6Az/+bPEV/2C/yghPoOKTH0d7h
	lkaf2Gc7cSmmMfm/xUY4mUd1zln1wnljbJECWKn3oDeanUsmUFIPKCZlwrogs9CMidvyvlCBsU57I
	a4cp7qi7g0TsVtnCCKpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd88a-00088L-1i; Mon, 25 May 2020 08:07:08 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd88S-00087d-Rl
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 08:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YUk5dI8DUrEU2hdYFymDXNkfY/vNYg0756NqgJw3twk=; b=TSWSdopkHRcnJuWOcX6D+r17Ir
 sUOMsmW4zcDtexeQcVZ4aEUux3rL+hUu3mGooMhbHW05PX5XxzFyhk6WcagbC/UGEmHhrGUKohZ2/
 UTCCQAj1EtOV0huhrkloncomWJYnBcTS6QOTVLDN3E1EI2/ppD3o0FkRB+MrbIqybatc=;
Received: from p5b206c3b.dip0.t-ipconnect.de ([91.32.108.59] helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1jd88P-0007qx-Lc; Mon, 25 May 2020 10:06:57 +0200
To: Eneas U de Queiroz <cotequeiroz@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20200525001956.9485-1-cotequeiroz@gmail.com>
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
Message-ID: <9c6dbf82-ba30-ff8a-4cb8-1a95da5da0dd@nbd.name>
Date: Mon, 25 May 2020 10:06:45 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200525001956.9485-1-cotequeiroz@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_010701_896734_F6D520AE 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] build: always use -minterlink-mips16 if
 USE_MIPS16
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

On 2020-05-25 02:19, Eneas U de Queiroz wrote:
> Individual packages may turn off MIPS16 ISA individually with
> PKG_USE_MIPS16.  However, they may link to a library compiled with
> MIPS16.  In such cases, the -minterlink-mips16 is needed to ensure there
> are no direct jumps to code compiled with a different ISA.
> 
> Instead of adding -minterlink-mips16 only when PKG_USE_MIPS16 is on, add
> it when global USE_MIPS16 is on.
> 
> Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
> ---
> Tested by compiling all packages in base, packages, routing and
> telephony feeds for mips_74kc, with MIPS16 enabled.
> 
> This was discovered while working on lxc fixes 
> (https://github.com/openwrt/packages/pull/12241), where compilation with
> mips16 would fail because of '-fstack-check=specific not implemented for
> MIPS16', and it would fail with PKG_USE_MIPS16=0 because of jumping to a
> different ISA mode:
> 
> lxc-4.0.2/src/lxc/caps.c:24:(.text+0xa4): unsupported jump between ISA
> modes; consider recompiling with interlinking enabled
> 
> In theory this could happen in more places, so set interlinking on
> whenever MIPS16 is turned on globally.
I think there needs be a way to opt-out of this behavior.
The -minterlink-mips16 flag affects the performance and code size of
generated code, so libraries that disable MIPS16 for performance reasons
and don't depend on other MIPS16 enabled libraries should not be
compiled with this flag.

- Felix

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
