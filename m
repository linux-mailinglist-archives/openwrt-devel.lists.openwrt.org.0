Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D96A1308C8
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 16:33:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwz5uKyC2wjd9ykxVgvQR3ai93QBsqic4AJRQN+N+qo=; b=bmtMfkesuGSK9b
	0qnG5tot95bKnCsPLAK5VmAkRDxpSfnbLF7+FxyD8/bVM7PPrNAWnBs+21GZ70lIn8hTdzlkJHW+N
	/EeTiHhUrF/8mwWxefC3tEIatN5VuKHzCOu+qgXFgPspqKLj9MhLgfUHBZ8fthAUdKgiLK2R/o7w1
	TIBcGQ+F5fF+b/Xtn82ZYLitNctIt3KLFPTOIG71QTAWWoniYIkE8I4sQtJJPI5tnpEJD1xyS8UfX
	ZgyEm1pQf1h2br3E3pAouTghv02laNa1yuCOmyldRmuxy0huOWV3zSKFu/9JUExQKltUcvJxg3bXH
	UHN7LB5mxBBt9ZkmxPBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io7tV-0003L9-Qk; Sun, 05 Jan 2020 15:32:45 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io7tN-0003Kg-H9
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 15:32:39 +0000
Received: by mail-ot1-x333.google.com with SMTP id r27so68063215otc.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 07:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=lfdK25fibYzXg/b8S5zgRVEXk3Lowjl/OKKMVJnw1Xg=;
 b=cXeOAIv0Xe3uCUhM5/QGdQOA/+6IGydXz2cvJgisPoQSdTlOgmTRhRTF3EPdR3se/G
 zGNmit0FK6d2Af6AM4Bnc4FvhkBHen4M4tT5Q5xu52I8U9ZusJJ8VCplnuY/RwpAxBk7
 4SiRcA4NZJHLeiio/ngj2uhP3b0bPlK0qOR9zZalgw4cqePHovHrMsBodmgNYPTGQ+kU
 XPgkOrzueg1fm+fH25Eu81ARVnq62zAFx6kgqkgNw7f76Iwe7tGL2xDda0sz4Qb2uDqW
 UcbIl1Qc6JBiYmfMVOTMFyRvQRI4i2AeXzGGGG1oaTpX6AchA3AmRl3e0B2y8UO8gL4E
 UNxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=lfdK25fibYzXg/b8S5zgRVEXk3Lowjl/OKKMVJnw1Xg=;
 b=e/Z+6ku+3fvso/N6G7rFEUBmIECz1m9U/P8iUi6MWm8wrJqE4lQzxdFYkIhMMECo/g
 o/IAnSCTNUGivLRBgGnt+KRhJZi4g0S7/kcpSUxkESgxV5l/0/3WFnl6d4GMzpg8Avza
 DOJGYUOLNBz2VvMyz2CmQBfDiuB1h24YxsRSmVEiWvbCVBDDeHJOVr3C+v+wkl19Hoi9
 2lA/kvJ/NraLVKz2Zp6zmegyFDPZtRYoW1c/JsTT3KcohMQoGGS/cybUf39Pox5zmC/y
 iS94Fe/9sTdHy5FMDQnsJXj7MoGd304ivkytM+Ag7t2wbqLbM+CRVB+fGt/4rxtXTFQc
 bSyw==
X-Gm-Message-State: APjAAAWbzWuuXvAuJLhD34MDL75UjCjU/Hri7xTP8nIfRti9ejI8hXWJ
 vUu95hg1vXNM2gdFFrvwobnOumM2o0o07z5yOCtAlw==
X-Google-Smtp-Source: APXvYqw1wlWd3Ktsq4fcnwHfisWYfMGnJPtQQ2MAqQszhuyCH8tq8gc1DOcarZ52vSAZ7iyxL1IsOtqs0/422Z4Vblo=
X-Received: by 2002:a9d:7f16:: with SMTP id
 j22mr107892427otq.256.1578238355257; 
 Sun, 05 Jan 2020 07:32:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Sun, 5 Jan 2020 07:32:34 -0800 (PST)
In-Reply-To: <005f01d5c3c5$d420a320$7c61e960$@adrianschmutzler.de>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
 <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
 <009201d5c234$d1045e30$730d1a90$@adrianschmutzler.de>
 <50e1561a-a48e-6b82-0b2f-52bfd90e747e@hauke-m.de>
 <005f01d5c3c5$d420a320$7c61e960$@adrianschmutzler.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Sun, 5 Jan 2020 16:32:34 +0100
Message-ID: <CAKR_QVJiA+kwuENABz=QLjBxVui-mVRTdNXCR+GmaaMf1Q26aw@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_073237_595180_350F9D6A 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 05/01/2020, mail@adrianschmutzler.de <mail@adrianschmutzler.de> wrote:
> Hi,
>
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of Hauke Mehrtens
>> Sent: Samstag, 4. Januar 2020 18:26
>> To: mail@adrianschmutzler.de; 'OpenWrt Development List' <openwrt-
>> devel@lists.openwrt.org>
>> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
>> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>>
>> On 1/3/20 1:53 PM, mail@adrianschmutzler.de wrote:
>> > Hi Hauke,
>> >
>> >> -----Original Message-----
>> >> From: openwrt-devel [mailto:openwrt-devel-
>> bounces@lists.openwrt.org]
>> >> On Behalf Of Hauke Mehrtens
>> >> Sent: Donnerstag, 28. November 2019 19:42
>> >> To: Adrian Schmutzler <mail@adrianschmutzler.de>; 'OpenWrt
>> >> Development List' <openwrt-devel@lists.openwrt.org>
>> >> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
>> >> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>> >>
>> >> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
>> >>> Hi Hauke,
>> >>>
>> >>>> The following are still on kernel 4.9:
>> >>>>  * ar7
>> >>>>  * ixp4xx
>> >>>>  * orion
>> >>>
>> >>> There are patches (actually from you, May 2019) on the list which
>> >>> claim to bump ar7 and orion to 4.14:
>> >>>
>> >>> https://patchwork.ozlabs.org/project/openwrt/list/?series=107337
>> >>> https://patchwork.ozlabs.org/project/openwrt/list/?series=107339
>> >>>
>> >>> I haven't looked closer, just in case you forgot about them ;-)
>> >>
>> >> Nobody reported that they are working so I never applied them. I do
>> >> not have the hardware, I just made them compile.
>> >
>> > Since there was no response of any kind from a third party, I've just
>> marked the two patchsets as "Deferred" in the patchwork, so we get a
>> little
>> more overview there. I hope that's okay for you.
>>
>> Yes fine with me, we should probably drop these targets soon.
>>
>> Hauke
>
> I think it's time to remove the three targets and kernel 4.9 support as well
> after the release has been made. Or does keeping kernel 4.9 in master (even
> without targets) make it easier to support 18.06 branch?
>
> Best
>
> Adrian
>

This LTS version will receive updates for another 3 years, why do you
want to remove it?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
