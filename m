Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC3E35CEF
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 14:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B1uGyA3PcUzOrTxbTgkeXoUOFGUdtavcvx+pfwmjA8o=; b=F/yanklaeIWBe5Z2oFKxNlGlW
	FuwmzwluLTIVc7jCxvEQ6xD53CiGDV8Yj2nHEvHtV8U3bA3TmVo7xYA9D2YAl7NGGIZMfQICndoPL
	RTzFz0cUKnPcO0y85RaPvZik01e54zDqEQ5yxAjikL/APdcO/EAhN0WOSbwxWf074TrIK/KJsfTh4
	+HR6UStU2lm2mbYTm5Tn44kPD3045po22hOUF18P3XTnBTa53McQVmd9lNUrUUVuZSc6oYWdqc95S
	meN+v8qfil24qsJjEhEuH8Cj2nKoGB4Ic/bVljtyNBbb/Hxc7HH5xifl18Rp7AEMZxBqAeTk8t1l2
	8t4sfN8zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYV71-0001EP-Pw; Wed, 05 Jun 2019 12:33:51 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYV6v-0001E6-CO
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 12:33:46 +0000
Received: from p5dcfb869.dip0.t-ipconnect.de ([93.207.184.105]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hYV6t-00038T-Fq; Wed, 05 Jun 2019 14:33:43 +0200
To: Karl Palsson <karlp@tweak.net.au>
References: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
 <DLiog63dMUCNvIuGWRoixvsPxUgrQbnsVeQEQH9A2342@mailpile>
From: John Crispin <john@phrozen.org>
Message-ID: <bfbe025d-a01d-264f-0dde-6e1bfc2cc43d@phrozen.org>
Date: Wed, 5 Jun 2019 14:33:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <DLiog63dMUCNvIuGWRoixvsPxUgrQbnsVeQEQH9A2342@mailpile>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_053345_576102_13D60F93 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 05/06/2019 13:35, Karl Palsson wrote:
> John Crispin <john@phrozen.org> wrote:
>> On 05/06/2019 12:17, Karl Palsson wrote:
>>> John Crispin <john@phrozen.org> wrote:
>>>> This can be used inside build setups for easy feeds.conf
>>>> generation.
>>> Could you give us an example of how this is actually easy, or
>>> what sort of functionality this is providing beyond "cat
>>> feeds.conf.default feeds.conf.extra > feeds.conf"
>>>
>>> It seems like a lot of perl for a narrow usecase.
>>>
>>> Sincerely,
>>> Karl Palsson
>> This was brought up as a missing feature by the prpl folks. I
>> considered on how to best implement this and find that having
>> proper tooling is much better than having to carry around an
>> extra file that is cat. being able to build the feeds.conf
>> dynamically like this just seems much cleaner to me and will
>> allow downstream users, vendors, odms and integrators to have
>> less need to patch their trees to death.
> So, they still have to have a script, but now the script has...
>
>
> ...
> ./scripts/feeds setup -b src-git,private-aa,git://blah
> src-link,private-bb,/wop/blah
> ...
>
> instead of
> ...
> cp feeds.conf.default feeds.conf
> echo "src-git private-aa git://blah" >> feeds.conf
> echo "src-link private-bb /wop/blah" >> feeds.conf
> ...
>
> I mean, _yes_ it's "simpler" but it's only simpler by bringing in
> new tools with new layers of abstraction. I really question
> whether that's actually simpler for anyone in the long run, and
> also how this really counts as a "missing feature" There's still
> going to be a requirement for that vendor script.
>
> Sincerely,
> Karl Palsson

Its not a new tool, its an extra call to an already existing one. I =

believe that the one liner is much cleaner than the 3 line scriptage. =

there is no requirement for a vendor script. they ship with a PDF that =

has the build steps. This oneline will be much easier to use I believe.

 =A0=A0=A0 John



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
