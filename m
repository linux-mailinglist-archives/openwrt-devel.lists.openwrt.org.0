Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA791407B5
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 11:15:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCv+WipKX91+kO6ZaPgg+j/areA29guo+UGPfi1sVNM=; b=bBtX+n6qSwzbzD
	/oJQAP12xUdyoV6SmZoSpC9vvWuIpZzpawkb1S16qL+83onsGgJo+17IP6+xQN37QR+CpVWe2s0H7
	m09z8oiNF4prVHPRjhxkp8QvNSickax8t9RXUwEVWMDFKQWbefJ9omJDWWaUpaEvr6Yx1zwwMSRzo
	YZV45czHbscdE2/8vmUD/dcVKyAupZ5bfz9WPM2xt7/xGA1y/WEgETH493cCoklPZliSMHx3QZ3ej
	mdvMJcnfE8vXCsLNUt1MnPxpahj9519lChjd9hCutZkMvPUmVD5KVl2NWhZhumbh5K2qDr01kBl0F
	a0YlS0O0Xu3li+EGp/7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOeU-0000GU-CJ; Fri, 17 Jan 2020 10:14:54 +0000
Received: from l5m.de ([84.200.74.160])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOeE-0000FL-Hc
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 10:14:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by l5m.de (Postfix) with ESMTP id AFDFF1084B2
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Jan 2020 11:14:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 andreas-ziegler.de; h=content-transfer-encoding:content-language
 :content-type:content-type:in-reply-to:mime-version:date:date
 :message-id:from:from:references:subject:subject:received
 :received; s=default; t=1579256071; bh=sv2jM5YlcqvIDKppll9zcmyW3
 DnfWwQJhikw6Pca2z8=; b=YeDVBkQ1xdXdSTgf3r4PTBDmBE+t8vJtKZo/tXTRy
 1LZXhQe2azdA++fzBcPWwCyPFkcPWi/HizOF/kqKzNHMi1OD+5Ms9Juqu522RxmK
 WLV1mLwI3fQWSKe34vUE94FGs7w6NxmB4W/zyCxRIsvZKqInDC/r5npBTcIu82nt
 lk=
X-Virus-Scanned: Debian amavisd-new at l5m.de
Received: from l5m.de ([127.0.0.1])
 by localhost (l5m.de [127.0.0.1]) (amavisd-new, port 10024) with ESMTP
 id CD5_julTBhEt for <openwrt-devel@lists.openwrt.org>;
 Fri, 17 Jan 2020 11:14:31 +0100 (CET)
Received: from [IPv6:2a01:c22:7a1d:2600:a892:56ad:df43:ba16] (unknown
 [IPv6:2a01:c22:7a1d:2600:a892:56ad:df43:ba16])
 by l5m.de (Postfix) with ESMTPSA id DA3981084A3
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Jan 2020 11:14:30 +0100 (CET)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <CAMdYzYqL3-6s4vcjyT7=UDDQTN85RNQTRQ77ixvRnBk2EaBDHQ@mail.gmail.com>
 <20200116114813.GC84286@meh.true.cz>
 <20200116194359.775fffdd@kosmio.komorska>
From: Andreas Ziegler <dev@andreas-ziegler.de>
Openpgp: preference=signencrypt
Autocrypt: addr=dev@andreas-ziegler.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <05299fe0-e929-df32-ac96-50b967203e1e@andreas-ziegler.de>
Date: Fri, 17 Jan 2020 11:14:30 +0100
MIME-Version: 1.0
In-Reply-To: <20200116194359.775fffdd@kosmio.komorska>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_021439_033480_D112A79E 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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

Hi,

although i'm more a user than a developer, i would also prefer a sooner
release based on 4.19 over a later release based on 5.4.
Maybe it's the same problem, too atheros-centric ;-)

Regards

Andreas

Michal Cieslakiewicz wrote on 16.01.20 19:43:
> Hi!
> 
> Speaking as a small part-time contributor of some Netgear WN(D)R routers
> code, please reconsider if jumping over 4.19 straight to 5.4 is not a
> too big leap. I'm sure kernel devs here knows better than me how many
> OpenWrt drivers, quirks and enhancements can be ported without too much
> effort from 4.14 to 5.4 that will really benefit from newer 5.x code,
> but here are my 5 cents.
> 
> I was able to port ar934x-nand code from ar71xx 4.4 kernels to ath79 &
> device-tree 4.19 without going too deep into low-level NAND operations
> thanks to only minor changes in kernel code. 5.4 apparently deprecates
> some functions in that area providing 'legacy' knobs for
> who-knows-how-long. If this particular flash driver won't work with 5.4
> at the time of 20.x, routers using it (like WNDR4300 and
> other AR9344-based) effectively will not have any stable OpenWrt
> release supporting it even though they were in master since the end of
> 2019.
> 
> IMHO OpenWrt should have an one final, rock-stable release based on
> latest 4.x LTS kernel (4.19 that is) with ath79 replacing ar71xx
> whenever possible.
> 
> Apologies for being so Atheros-centric :-)
> 
> Cheers
> Michal
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
