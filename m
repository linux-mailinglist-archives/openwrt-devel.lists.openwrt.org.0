Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF6B14CCF6
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 16:07:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uJX0SBYQjPb8wa4N3FHzWn9MzHK6Z9gaA8txLT3V0Hk=; b=P4gVE/VK1RvRP7M1G0qr5ZRJG
	ozxPN5X4P7JnSBOSppoPoClsDFoWlqYj3T56WS7qUXZLLpLOKC7C59yMyBtEGrXZrCzi8iklG54fc
	/EjdxoE24X8lA4wwPMsQF65efkthp5Q6aZtuc1X4dIzAGm2Bi2L2c3oDZx8tAHA7+Cw70jXlul2/j
	j7lejphr6uzETDy6sf0ENFNHiSrxQrD6HeTE/RDfBMXmUtvgcqSyy054N2ycpQyESIAfPUjkmJxG2
	Whn3AFxO733nabMhckwfUx5HO2H7qEdsc32N3Ni7+eKjLf/JLeKfbTxZg/emZeXvcQggfwWW+6ZdY
	65r/DtP+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwow8-0002m4-Dh; Wed, 29 Jan 2020 15:07:24 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwovx-0002lb-Ux
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 15:07:16 +0000
Received: by mail-lf1-x142.google.com with SMTP id y19so12090091lfl.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 07:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=E4vHCoqNzvX2czyIzmljhEFUMKbRe0QKvc/aqDA0rxM=;
 b=TZBVmTFyXLBXN7FyhOEX0TXGQZFvqooxxr31EtmxRusPvoOwzZj+KeEXCA6VwHdQEU
 lJUbQKQPFa3Y4MlB+QGh8rvRJjGMGbwQ+/Nkw6chjhu0eODBMecswAetKyRSZmTQG5/5
 iTi7If8H7uEGu9jWa/ApRC2Xkzdjk+LxbYtlW/rO95q01j/rzpF54MXZyuJqAQpZ6E+q
 K+IQr+C9pz6PSoKdT4OfjdriWFBmpJtZEz544caaThn/IkdZwL2m9xwl64yg9IMBp3T1
 /rMGt3ohrCv5umifDMz5oV9pOJ9uixYlbkwt8qWUiXEuimCaA0WvDauKBRmNXOSvKJ4u
 QWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E4vHCoqNzvX2czyIzmljhEFUMKbRe0QKvc/aqDA0rxM=;
 b=Hbzjt56w3tLhxY6Fhc5THpSIjbbMXE1oz1QEjt4vcGfEhL+4RX59klP+JDHB3EEbn9
 evF/zTxkwS57CPmrfvuomh6Go4hdGhLTVKZP6/PHQqcSTUogH3v5NFt/7jeDCPT94xCE
 pAqkE4CPSiBXu3dHuRVQzl9EiAbqvjF7pet5ZDvj5RP4p4WInh9clzTkMpk95M2PXptB
 WX5ODJcfx51ZU2lsccceYcP8296VZcrTNeuPUb2YeLRRrKL2tWYcuG1Qe1dyTZL0bSOs
 JBvqr43/VvipEYOUPktg4cw0/6RQT226jjnqmE54HVEo6OLrbmAQf0B6eeyXoFFQgsfB
 npnQ==
X-Gm-Message-State: APjAAAXg3liYOFHSZATO1zRgUR3jep/M+Vy5R98NzfiDTKuAqt/tHCpt
 y6K1EdowPBfFFNfWKR63xxg=
X-Google-Smtp-Source: APXvYqyBH3uIuVjw03ifaD/VQQMS/tMo/1bSM9rtav0+KFr/KCEHMMJB/0bP4VVhGu49IEotijDWPQ==
X-Received: by 2002:ac2:4884:: with SMTP id x4mr6006398lfc.92.1580310429915;
 Wed, 29 Jan 2020 07:07:09 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id b64sm1191164lfg.7.2020.01.29.07.07.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2020 07:07:09 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
 <fcbe4834-b61a-c3a6-99fa-77058773c59d@gmail.com>
 <00c001d5d5f2$62758ad0$2760a070$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <07096e23-6f37-9af1-39c3-c05dc382ebe9@gmail.com>
Date: Wed, 29 Jan 2020 16:07:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <00c001d5d5f2$62758ad0$2760a070$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_070714_024995_207D5568 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com, ansuelsmth@gmail.com,
 'David Bauer' <mail@david-bauer.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 28.01.2020 16:48, Adrian Schmutzler wrote:
> Hi Piotr,
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
>> Behalf Of Piotr Dymacz
>> Sent: Montag, 27. Januar 2020 21:45
>> To: Adrian Schmutzler <mail@adrianschmutzler.de>
>> Cc: openwrt-devel@lists.openwrt.org; gch981213@gmail.com;
>> ansuelsmth@gmail.com; 'David Bauer' <mail@david-bauer.net>
>> Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
>> 
>> Hi Adrian,
>> 
>> On 27.01.2020 19:35, Adrian Schmutzler wrote:
>> > Just a quick one:
>> >
>> >> > So, no matter what we do, there is no easy way forward.
>> >>
>> >> We could remove all ar71xx -> ath79 migration helper scripts, ar71xx
>> >> board names from supported devices lists in ath79 images and make the
>> >> target a brand new, without any concerns about soon-to-be obsolete ar71xx
> ;)
>> >
>> > At the moment, I'm actually mostly inclined towards this solution.
>> 
>> I'm afraid it's a bit late for that as 19.07 is already out and it
>> supports (at least partially) ar71xx -> ath79 migration path/s.
>> Wouldn't that look unprofessional? Am I overreacting here?
> 
> One didn't have to use -F during sysupgrade, but the release notes gave the
> clear advice to upgrade without keeping settings.
> So, IMO we actually didn't "support" any migration in 19.07.0.

Fair point.

>> > However, for me personally SUPPORTED_DEVICES was always more a "don't
>> brick entirely" flag, so I never expected it to ensure 100 % config
> compatibility.
>> More like preventing me from flashing ubnt,unifi image onto
> tplink,wdr-4300-v1.
>> This impression might have been wrong, though.
>> 
>> I think device to image matching was the main reason behind the idea.
>> IIRC, mismatched image doesn't prevent you against upgrading with
>> preserved settings.
>> 
>> > But as mentioned by Ansuel, there are other incompatible switches to come
>> (and some are already waiting), and unless we want to create new targets or
>> rename devices in these cases, we have to think about different "levels" of
>> compatibility anyway beyond ar71xx->ath79.
>> 
>> I believe ar71xx -> ath79 is a special case here. First of all, that's a
>> new DTS-enabled target and it was suppose to _replace_ ar71xx but 19.07
>> went out with both of them and I'm pretty sure there are users who got
>> confused with that (some devices are supported only in one of the
>> targets, some in both, some with seamless migration possible). On the
>> other hand, when ar71xx gets abandoned, we (as a project) should make it
>> clear if ath79 is a replacement (thus providing seamless upgrade from
>> ar71xx) or a new target, without any relationship with ar71xx (thus a
>> clean sysupgrade is required). Keeping anything in between would just
>> confuse people.
> 
> I do not really see a viable/desirable option to support eth migration at the
> moment. And I'm not really a fan of adding lots of migration stuff which spoils
> the new ath79 target already, so after all I think I also do not _want_ to add
> eth migration either.

I wouldn't want to introduce _now_ any extra 'migration' scripts, code, 
etc. All I really want is to keep mapping of physical interface to 
kernel interface name consistent with previous releases as this is the 
most important thing when you perform upgrade on e.g. remote-only 
accessible devices (or those on mast connected with single eth cable). 
And it's not only about 19.07 and 18.06. There are devices in ar71xx 
which got supported before the LEDE 17.01 release and I'm working on 
keeping them alive within ath79 target.

> So, I'd prefer to see the ath79 new and clean.
> 
> However, from the wording perspective, I do not think that a "replacement" means
> seamless upgrade. I'd thus keep the SUPPORTED_DEVICES just as a device-matching
> measure, but wouldn't implement any sophisticated migration despite that. Having
> SUPPORTED_DEVICES might actually be valuable for certain third parties, like I'm
> involved in a downstream project that regenerates the system/network config at
> each upgrade, but still exploits SUPPORTED_DEVICES for having the correct image.

If you prefer 'new and clean' ath79 then _IMHO_ ar71xx board names must 
be removed from SUPPORTED_DEVICES lists together with migration scripts 
in ath79. If downstream projects want to keep that 'mess', it would be 
up to them. It should be clear that the ath79 target isn't associated 
with ar71xx. IMHO, anything in between would be only an unmaintainable 
mess (just see your recent fixes regarding SUPPORTED_DEVICES in ath79: 
[0], [1]).

> And I could well live with keeping the already present migration scripts, as
> having them as "undocumented feature" won't hurt. If we do not advertise it, it
> won't confuse people ...

This smells for me like something easy to forget which would then get 
removed ~few years later during some gardening performed by newcomer 
without any knowledge about very-long-time-ago-dropped ar71xx :)

[0] https://git.openwrt.org/47935940d67147e3ec8dbfcb56ae14f1235369c5
[1] https://git.openwrt.org/da5b5ae9b9647f50853bff96309d1435cddcefce

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
