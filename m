Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108F41EABE3
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 20:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vyKKXkHhO+emsvc9tiu9Cszd03gJ+xJ+H7XkV8ouh0=; b=cPfH46yYgx17XK
	W7N7wo5UIiwGaJfrcKzK6t7EiGxNfSjowBG0nUgc3jUzwskliD6dzrscvQTDGydTB0gcHHj39BX6E
	H0ZxC8rItJgzgC7oQTOyscRGkwXd2fK+2Y1yAbVr3KEI5IApjvakioGdFYrdtSUfvNQ+1odxjDzn0
	aezhA5C9BvkatLU94sRecAbX+mm2BXHZ6ymmEUh+JwTf3ab2rdiSUGUFXUVpNu4F+WRdPh0rX+BOb
	e4f2Vjq+ESwZeV+qlSdH8fD3IWe/9wh5Ly06K1CIKfENp8q+q+D9y/fQXbcxSQx78dR5gzrICTl3O
	mKUYTTqgKk87XZl3dvsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfp5N-0007WU-Up; Mon, 01 Jun 2020 18:22:57 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfp5H-0007Vk-JH
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jun 2020 18:22:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t2hPTIy0eNCIRH7aDiL2v7reLS9YaZtekhjnZhXbGJ8=; b=m80Ly1sIlrn8V/406bdrbObgCM
 cfRHFgmfe3wkHPpZ6OHI8koBECfmLMkn8w5JEZiCzzPr7gENG45bB230XO6iZ7PEP/NCJUERjzich
 iM+Wt+h4XWraiozr0N/hka7bCe8c6zHnfnY3nqs9dioOQls+ReIgBBCIiD3raNvZLWJ8=;
Received: from p5b206054.dip0.t-ipconnect.de ([91.32.96.84] helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1jfp5A-0007Qs-0q; Mon, 01 Jun 2020 20:22:44 +0200
To: Michael Jones <mike@meshplusplus.com>, Roman Yeryomin <roman@advem.lv>
References: <20200601153226.15229-1-roman@advem.lv>
 <CAJQUmm5aVrkZ_UQOx-2Yk_jUreZOqCG5wt+S7+b3p9sqAyJY2g@mail.gmail.com>
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
Message-ID: <6406348b-1e10-5e6d-0c20-9e2716099833@nbd.name>
Date: Mon, 1 Jun 2020 20:22:43 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAJQUmm5aVrkZ_UQOx-2Yk_jUreZOqCG5wt+S7+b3p9sqAyJY2g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_112251_835070_94FA8956 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] build: improve ccache support
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2020-06-01 19:11, Michael Jones wrote:
> 
> 
> On Mon, Jun 1, 2020 at 10:33 AM Roman Yeryomin <roman@advem.lv
> <mailto:roman@advem.lv>> wrote:
> 
>     Set CCACHE_DIR to $(TOPDIR)/.ccache and CCACHE_BASEDIR to $(TOPDIR).
>     This allows to do clean and dirclean. Cache hit rate for test build
>     after dirclean is ~65%.
>     If CCACHE is enabled stats are printed out at the end of building
>     process.
> 
>     Signed-off-by: Roman Yeryomin <roman@advem.lv <mailto:roman@advem.lv>>
> 
> 
> This certainly looks like an improvement.
> 
> However, there is an important usage case that this change doesn't address.
> 
> Frequently when I am working on OpenWRT related things, I have many
> different workspaces all tied to the same git repository hosted
> externally. The reason for this is to allow multiple builds to live and
> run independently.
> 
> Having the CCACHE_DIR be located *inside* the repository doesn't share
> the cache between multiple workspaces.
> 
> So can the CCACHE_DIR be made configurable at build time based on the
> .config file? Perhaps it can default to this, and only be set to the
> value in .config if provided? For my purposes, I would always set the
> CCACHE_DIR to a path that all of my workspaces use.
I don't think there's a need for that config option. You could simply
add a .ccache symlink in your source dir and point it to your shared
cache. I do the same with dl on my trees.

- Felix

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
