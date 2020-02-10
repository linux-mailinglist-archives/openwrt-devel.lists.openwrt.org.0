Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCBF157C6C
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 14:37:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1AZWgou2LLr7IPmnIMOF2Jc5WFuLhRlxoktju+pdm8=; b=eafSw4yAsRatNN
	fUoMVT4Jm7Sn4DNZmq0KN7w1Q1UKr0Dof/2j8GE9+u5tzRew0zlZdSaEgb3RbRpWhsxNUNfPuxnke
	3Uv6a0UAwxuuTnlKmaiHY1yH2iVjX8lAtigvMnaMNdTYNzoxdKxY/BsvqHiK5wG2GsBxXRMWuh7bf
	lM48XA/kcaxnzk5xEjHaSYv82ON2ImNqTDO9kv7zzt+NDD+A4j3lNHDViX2iixP0X81ZJZus2pwFw
	gkqEOcWB01YdQpxXN0oQB/lcuqSupEfvw8mHbBZgz1NKiYPeMaoBeI3gsJe/dKI8CMyzJ6AMPDRF4
	IB4N2QyxcXaTRbInyuMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19Fe-0004JE-AD; Mon, 10 Feb 2020 13:37:26 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19FV-0004Ik-Tq
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 13:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JVsY2oaqkrOoliyjst8DZILM6b+uihm4iK83R0gZu3k=; b=YN4wO61YY+55MTyeaQ7vDNNdKq
 mgqlsO+BNDGP+ianbG5KOe8lDd45qi61tf7MWmnGfHMKIDIpfNgPJFDpRWx62BGFbd5cX/GONNbpH
 ka8+dy08Z0qjGDezCN/yBpZqy2FLRax5PTumF4tPqbTtG1Bqr8de2Q7ixVyPPk0LNBpE=;
Received: from [80.255.7.101] (helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1j19FQ-0002Rk-Hw; Mon, 10 Feb 2020 14:37:12 +0100
To: Rui Salvaterra <rsalvaterra@gmail.com>
References: <20200130200345.31741-1-rsalvaterra@gmail.com>
 <c9cd9283-7a06-72a5-692a-6a88da7110c9@nbd.name>
 <CALjTZvZwq6AeTSYT700vw8y4N-N3h489d47n-VLyfEXTdpuv-A@mail.gmail.com>
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
Message-ID: <9074b381-ca1c-1b47-f427-68f616ef1321@nbd.name>
Date: Mon, 10 Feb 2020 14:37:11 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <CALjTZvZwq6AeTSYT700vw8y4N-N3h489d47n-VLyfEXTdpuv-A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_053718_160857_96DE5DE9 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC/RFT PATCH] ath9k: implement kthread
 entropy collection for AR5008 and AR9002 PHYs.
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2020-02-10 10:44, Rui Salvaterra wrote:
> On Fri, 31 Jan 2020 at 08:12, Felix Fietkau <nbd@nbd.name> wrote:
>>
>> For at least AR5008 and AR9002, but probably also for AR9003 I would
>> like to keep the behavior of collecting entropy only once at driver
>> initialization.
>> Last time I worked on this I noticed that on several chips, sampling
>> entropy during normal operation caused stability issues that were hard
>> to pin down but quite noticeable.
>> I think the benefit of continuous entropy collection is simply not worth
>> the extra cost of potential stability issues and debugging time.
>>
>> - Felix
> 
> Hi again, Felix,
> 
> FWIW, this patch has just survived a whole weekend of rngtest <
> /dev/random on a Buffalo WZR-HP-AG300H (dual AR9002). Output follows:
> 
> root@AP157427:~# rngtest < /dev/random
> rngtest 6.6
> Copyright (c) 2004 by Henrique de Moraes Holschuh
> This is free software; see the source for copying conditions.  There
> is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
> PARTICULAR PURPOSE.
> 
> rngtest: starting FIPS tests...
> ^Crngtest: bits received from input: 224241980032
> rngtest: FIPS 140-2 successes: 11203058
> rngtest: FIPS 140-2 failures: 9041
> rngtest: FIPS 140-2(2001-10-10) Monobit: 1165
> rngtest: FIPS 140-2(2001-10-10) Poker: 1175
> rngtest: FIPS 140-2(2001-10-10) Runs: 3340
> rngtest: FIPS 140-2(2001-10-10) Long run: 3405
> rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
> rngtest: input channel speed: (min=165.459; avg=1025.932; max=1093.147)Kibits/s
> rngtest: FIPS tests speed: (min=503.707; avg=14584.165; max=14920.741)Kibits/s
> rngtest: Program run time: 228508694816 microseconds
The issues that were reported years ago were mainly stuck beacons,
increase in hardware resets, connection stability issues.

- Felix

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
