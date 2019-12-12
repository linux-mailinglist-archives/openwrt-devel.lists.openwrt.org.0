Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F8E11C66C
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Dec 2019 08:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VZ9bPwFXxoC8FjhMqeEi86OxHOX/3PuSKMj+rsYt7E=; b=MG7Qqx1V3Wi/4D
	Rbh1Y65CdHulpmRS97f0LyV/+5R3rGeTt/w5826NONiv2ihrCEzx5Eyk4qhbN5112BOcxzVKe/AkP
	urVpQLlGyV/BuLpbXI0UFEepYglSrMaQGA4oQfRfKpkUMeblQPYFU1HNq5IZT38QymtMoi+f7QtUX
	bQD0A80JSPiyVfXYGYCIgYIs07abUqX8ZOl4S6wMMQhGg+b9lh39iiNGKmEoycT4aNtYZ92sqiIVV
	zegiA6vNuIsRB2vJDo3BQCJh1eP97uVRyDe0q+itd3+oFFRukNxV3rRtYD5EFcjKNTcrMWZnd1fGU
	VZZJmh24mvNdz9nVvDLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifIzY-0000ME-LE; Thu, 12 Dec 2019 07:34:32 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifIzP-0000Bb-SQ
 for openwrt-devel@lists.openwrt.org; Thu, 12 Dec 2019 07:34:25 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 8885BFA156; Thu, 12 Dec 2019 08:34:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1576136045;
 bh=bwr490cIwYBaB2BXrQJ2JHnMPcu5AbFgEz59+uXvgFQ=;
 h=Date:In-Reply-To:References:Subject:To:CC:From:From;
 b=DY6EK1fGAN6OPqQTtqhxS4mTBwLl9FvscfsPt8Ffvsa+GCf2JbFvEzc23JJtRdzKz
 dPSFrJlz/Wvjj/Y+1bkYQ7hu37fISwclDbve7hHVLJZZ3hzNBBKPuQ7smYm2A+hGcT
 TW5GCX1EHE9Y17zeD1hZATpJOxRIYeSA4wD3SiFs=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.188.38.198] (cust-198-38-109-94.dyn.as47377.net
 [94.109.38.198])
 by volatilesystems.org (Postfix) with ESMTPSA id DC7C0FA14B;
 Thu, 12 Dec 2019 08:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1576136042;
 bh=bwr490cIwYBaB2BXrQJ2JHnMPcu5AbFgEz59+uXvgFQ=;
 h=Date:In-Reply-To:References:Subject:To:CC:From:From;
 b=NVHeEkkj5++M/wJAy/lonmXe93/WBcclCbfeN7MR5nUVm3HuIR0kF/czwuSLk0D+v
 VFy3EZzEr5v4JYDud3br/75XJRgBogP4JIn5pwZQpUD0OnkGWhsoBDMVqLd0KWoW+N
 Y87NUfM3jPDuYJlcDqCKYRPI0ecsdYF5lzO5sy34=
Date: Thu, 12 Dec 2019 08:34:00 +0100
In-Reply-To: <CAKxU2N8VhkB-kf6UWFQBg0+9VCAxUJ=S5AE0X_iYv-VeKwM+KA@mail.gmail.com>
References: <trinity-108cc2ee-b593-4dec-a1d9-77c447ee9eed-1576082246699@3c-app-mailcom-lxa07>
 <20191211175432.GI1371@makrotopia.org>
 <911d8b6a-df86-5a3f-906d-c6bb1c1d7e43@gmail.com>
 <CAKxU2N8VhkB-kf6UWFQBg0+9VCAxUJ=S5AE0X_iYv-VeKwM+KA@mail.gmail.com>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org, Rosen Penev <rosenp@gmail.com>,
 Alberto Bursi <bobafetthotmail@gmail.com>
From: Stijn Segers <foss@volatilesystems.org>
Message-ID: <F7BE36BC-35DC-48A2-8BEA-307DC73E1040@volatilesystems.org>
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_233424_058230_FE346A5D 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Inquery
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

Rosen Penev <rosenp@gmail.com> schreef op 11 december 2019 22:17:34 CET:
>On Wed, Dec 11, 2019 at 11:32 AM Alberto Bursi
><bobafetthotmail@gmail.com> wrote:
>>
>>
>>
>> On 11/12/19 18:54, Daniel Golle wrote:
>> > On Wed, Dec 11, 2019 at 05:37:26PM +0100, WRT Burner wrote:
>> >> On 11/12/2019 15:22, Daniel Golle wrote:
>> >>> And it's even needless to say that
>> >>> replying to a spam email in which ever way will always make it
>worse.
>> >>
>> >> +1. There is no constructive value in replying to spam. Let's keep
>openwrt-devel
>> >> nice and clean.
>> >>
>> >> On 11/12/2019 15:22, Daniel Golle wrote:
>> >>> You statement "suck it" (guess what) is also an obvious
>> >>> and disgusting example of a masculist culture which hurts our
>community
>> >>> as a whole and I strongly believe we should not tolerate that.
>> >>
>> >> -1. This is a software development mailing list, not tumblr.com.
>> >
>> > '-1'? So I get right, you are saying it's ok to be insulting other
>> > people because this mailing list is about software development?
>> > If that's really what you wanted to say, I'm glad that's only a
>single
>> > individual opinion coming from an email address which has never
>> > actually been used on this mailing list.
>> > And btw, this is your first 'contribution', and it's not even about
>> > software development...
>> >
>>
>> He is just disappointed at your pointing out the "masculinist
>culture"
>> in a place where he expected more maturity.
>>
>> Yours is mostly SJW-speak and I'm also not fond of it, I'll explain
>why.
>> It is a double-edged blade.
>> In this case your definition is technically correct, we all know what
>> "suck it" implies.
>> But this highly polarizing approach to life and people can (and does,
>> especially in its dens like tumblr.com as mentioned) slippery slope
>into
>> full blown hate and reverse oppression, which is equally bad.
>>
>> I'm not impressed by your reaction here, first thing you do is a
>blatant
>> strawman logical fallacy and then proceed to attack him on his
>personal
>> values as a person without even asking to clarify his position first.
>> He just posted a single short sentence, for heaven's sake.
>>
>> This is EXACTLY an example of slippery slope into blind hate rage as
>I
>> said above, and exactly why this kind of polarizing categorizations
>and
>> statements should be avoided at all costs in a serious and sane
>environment.
>>
>> We should really not jump at each other's throats on a moment's
>notice
>> like that, especially not in a software development mailing list.
>+1
>
>Unnecessary drama is not neStijn

Very much so. Thank you for this voice of reason.

Stijn

>>
>> -Alberto
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
>_______________________________________________
>openwrt-devel mailing list
>openwrt-devel@lists.openwrt.org
>https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
