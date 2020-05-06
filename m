Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2541C65A0
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 May 2020 03:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZHkmzuW/mBwYSmF78cubjL8iyFU69m/X3xvsMCfsOk=; b=X5S3xqFB64OAMJ
	jLkr1OPib102+N6zZX/a3ThK47AgObH7HjQLu+w3Qh70apKK6Carb0USK/2fjNQP1d2f4/UM7C7dc
	L2U+fn/WDQjaTsR5+dg+MdNfb6ld1U3oS9t2vK/A/rzaP+zWDW8qDsCqQWZmsFLwuL6Gvymkcbbam
	30jXNNfgmAuCXbgigci6ShniSXYI4Z5lx62wblQSBstxYKAOO6RAo7ccHcTEzq1Oe1BL2MPoizkW6
	gApU9+vy5N1YmJjdAD4+uH0IR6PNZTHIgDrfbxplF/uHJJ4xolJPAgqaPd+8uBHNNHw3qWLw0wD+0
	MTEE0+t8Onr+Gx2TGouQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW94p-0007Qa-BJ; Wed, 06 May 2020 01:42:23 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW94j-0007PY-U5
 for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 01:42:19 +0000
Received: by mail-oi1-x241.google.com with SMTP id o24so345149oic.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 05 May 2020 18:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4FMbTTOK8+d5rgMwTA0j37IFlLcKO1wLafmoWYzOMMA=;
 b=L8dd+ibaCFoXqypMY2MOjAWb1J7F3bt0TMpLqzpldqYq906tjd0z7FKji5VDEn4+5c
 fcSZflMBfHVT3Ud2J7jezt25h9TVQP05pqOO7OfC3KeJlaWm5rR8q9d2myZLCZro/bYh
 MRUYnX7KdpjQaKZiLmy3RWVgjCTTKOOzi6llk1HxNN7c1QG60b3R6ubVWs1VFdGTpesC
 /YO+t8cc7ZexbOAQhTyyKLhy4levKM9soNvnlpwBgqbb35Cb0Qh69pINwYRXPx9qh69O
 jR2UvddqcwpWptvVQHNo3hjPKp1tbxJVzCbXZeR38bozvNQ5QaKM2UDeBd6V6aSjVd7A
 mCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4FMbTTOK8+d5rgMwTA0j37IFlLcKO1wLafmoWYzOMMA=;
 b=HS0aYWujTZsHIKEfTWJyHTTyp2nXpno+jztuZgHc1AUnFHZ2mmCBwGN+lbexB5dWIg
 1K+jxt+x3v3atZYBCRdIu7L3yFEdkRvnkE2K4Hu28a6ectkH1wFHvjsGU71lBnXARkp9
 dB/x91jcX3Y87mt9jqod71TfuaEoMHWaC3zgZCtMmOMk7C0PlOGDFFc11XbpgBQnUmNj
 1orYG1fx6HCvM6md10L9ZRskqEUUEzXgGXEt2vxmIOjAM/cmB/IYw6ghcSO9qQmPJONX
 Wr24rAoiOQdY2/9Ch2HXj6kR30wq7lqwpr6MU9jagTMnCfs8M29nD1qkeEV+zyUOkO73
 nB1A==
X-Gm-Message-State: AGi0PuaoJybzP9TSZsUnsGYeX5YLvnAbqYe0Yo0IrZXcUqxjdTe3o+xp
 JPIxv9+aRhOlVj0T1v0c0Q2nbERrdXmi14UGvdJa0jL3
X-Google-Smtp-Source: APiQypKFiueuQRQ8aprblSpEZtwbR5T6xahU9fillPJsq9gfeMwHR7kOX3/G1rg4LHtUaGkh1/MglHkFCnEaUaFxOmE=
X-Received: by 2002:aca:5614:: with SMTP id k20mr1230602oib.30.1588729336710; 
 Tue, 05 May 2020 18:42:16 -0700 (PDT)
MIME-Version: 1.0
References: <820c7e91-d055-9803-fd9b-9ba79779c4ff@cas.cat>
 <005a01d622c1$babf9ac0$303ed040$@adrianschmutzler.de>
 <cb04f299-5b8a-a2f5-ae25-352e6177316d@guifi.net>
 <599fbf31-7565-94c6-f7f9-c2f6c92d6f9e@cas.cat>
 <6d0f15e9-cb29-13b0-e8e6-6ffc01edf30f@guifi.net>
 <f72b98cb-6e6a-5592-c860-959fbf65cf35@cas.cat>
In-Reply-To: <f72b98cb-6e6a-5592-c860-959fbf65cf35@cas.cat>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 6 May 2020 09:42:05 +0800
Message-ID: <CAJsYDVJG57N1MwJiq7B9XBasdk2BZfspZ5aL6ZZGpmqZki1JqQ@mail.gmail.com>
To: pedrowrt <pedrowrt@cas.cat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_184217_990254_AEA75DB3 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Multicast issue in 19.07.x release and master,
 fix it in 19.07.3 (?)
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Wed, May 6, 2020 at 1:36 AM pedrowrt <pedrowrt@cas.cat> wrote:
>
> I tested it using Staging tree of Chuanhong Guo [1], and it worked. Good
> job. What are the next steps related to this?
>
> I understand to not be included in future release (no problem, we can
> inject the patch on our own), but in fact, it is not just a bug, it is a
> regression, because it worked in 18.06.x releases.
>
> I don't know how many devices have this switch in their hardware and are
> affected too. What I know is that I detected it too late, and in that
> moment nobody knew it. That could mean that nobody is using this feature
> (or hardware), or that the people that use it this way are giving up or
> sticking to 18.06.x release (?).
>
> If we are not including it for this release, as this looks pretty
> confirmed and we have a fix, I would point it in the wiki.
>
> Thank you all,
> Pedro
>
> [1] https://git.openwrt.org/?p=openwrt/staging/981213.git;a=summary
>
> On 5/5/20 5:16 PM, Roger Pueyo Centelles | Guifi.net wrote:
> > Hi,
> >
> > Thanks Chuanghong, I was unaware of it.
> >
> > I could verify the commit to work in master and 19.07, for both ath79
> > and ar71xx.
> >
> > Best,
> >
> > Roger

Thanks for your testing.
As the patch is pretty straightforward I've pushed the commit to both
master and 19.07 branch.

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
