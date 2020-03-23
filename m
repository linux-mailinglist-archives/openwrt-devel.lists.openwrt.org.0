Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7695618FAC7
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 18:05:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gEpyj/5C/+thj6XQIe2ZviP0TedGlpZYdk4fuVkpBmk=; b=UZNdzmQ2Xpf9QXMojMmgGFxef
	aegkVR5/tETSF8e4oAU6JUABuEyKbSOKzEOUED8bI1STSZvehQK3NCO4S0gd6WDRuV0giO0IERknf
	th2eboLDr2GiuVoq7Ob6sifvjUrIBDg0diXh3GtTyQ3XyF3jwOLSlNVPeG504tUXBLiLi9B/M0A8C
	/M2EIWH7AoT/LhDhaaQnX2Fr2hQ1xYxcxn1xWHp6/r8cFjRECeFE7tp8Vm3nj+WT0MuHjrOquJ0oY
	1eLCZXarzU1IDhjv5l3V8atnV+ZxoFpgecC8fXKvc3c43L110qeTlOoor16SeJSp7mXs/qz3wZxQv
	mc88V0jfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQW3-0007OE-P0; Mon, 23 Mar 2020 17:05:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQVv-0007NZ-Es
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 17:05:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id b12so187728wmj.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Mar 2020 10:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=rs6b6sjkQJP5KWiKEwzZNeulavy82NO0B61xmDgDb94=;
 b=mflIrDNdqG1r7MNcvjg1m/wObD51yACspf7mMgMcP/UumSpVmu6NYEot+EApjf4BlK
 c94RAXWhj2Zn1Ftiu0+Vicl2IA6HQBCY9t1AQG77FmQuYMoxOL9p58tIfjyw4+fo6AUd
 Vj7guwfXjMyERMkbNf//rsYZGtolpp95pEqlIdHF6ias+BEgG15HIwj6wF4p3IMCxLlG
 AyN4fCtIbqcimf76YX6wIlWtBV6u4AR9Ntpu3jhhzdYHd5S8eZMR9JVk6PAZv1b2Z6Gy
 mVZENQ4s5Gf/JWvRr6zaz/DaCRGR/RL1YFeTBoAbzhZwEK8Bz+ULNfs2tZ9XuHWS9rA7
 4b2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=rs6b6sjkQJP5KWiKEwzZNeulavy82NO0B61xmDgDb94=;
 b=N+p33aUx3MSX3o+ItzOmJQkh4NqA//QX+5D+ay12TTU3V4/6MaUMaeaCjb5DJ2BCWB
 nhbJlHg/cujQbQWc0HApN45pxICDcY+sJ8S6/A3V/3DA2qzCKMulqT+FdNNRfMiq5E33
 F7exMi6rFF0aUKo4LWPtTPipx8ag52LQSsATN97nBEjDClgUDfxjv+WyW3W3mvfHnEk9
 jLnyNSSF6CaNK6JS9nFfJGaTyNrHVKqw9b/+AROMbWEaQQKDo9bTZa1kgsknV5zoGSxr
 2rLzgsfQgdz7djqfPiff5U1+l5++pebdo7yBmsYXscoI3c3RBiAlu7okHxKbOE/C5eNb
 fwPg==
X-Gm-Message-State: ANhLgQ13KyrCL/GWNz10ZfOfDwvJXP6qvKH1uZvqr/QXFSyfY+PoGsjW
 QrS/HqsuvtP+qXxvNAvzasc=
X-Google-Smtp-Source: ADFU+vvp00IU8f1A0WJIJmzBflJlNAwXi3X8EBKE5EqF/sPzRn7UExLw9nQMcPkHdm2i3eU+nkwl1w==
X-Received: by 2002:a7b:c305:: with SMTP id k5mr213053wmj.189.1584983120653;
 Mon, 23 Mar 2020 10:05:20 -0700 (PDT)
Received: from eeeinsomma (host48-12-dynamic.60-82-r.retail.telecomitalia.it.
 [82.60.12.48])
 by smtp.gmail.com with ESMTPSA id m12sm286415wmi.3.2020.03.23.10.05.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 10:05:19 -0700 (PDT)
Date: Mon, 23 Mar 2020 18:05:17 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>, 
 David Bauer <mail@david-bauer.net>
In-Reply-To: <20200323172042.2bf023b5@kosmio.komorska>
Message-ID: <alpine.LNX.2.22.413.2003231801340.7452@localhost.localdomain>
References: <20200317205927.26314-1-mail@david-bauer.net>
 <20200322123544.14cd2b55@kosmio.komorska>
 <f742327a-a9ef-f52d-bf34-5da2cddc1733@david-bauer.net>
 <20200323172042.2bf023b5@kosmio.komorska>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_100523_498706_5BD8EA6A 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.5 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: fix NAND driver compilation for
 kernel 5.4
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello!!
A little bit off-topic question: I encountered an issue due to a patch causing issues on ramips:
<commit>

... so my Zbtlink ZBT-WG3526 (32M) behaved like SPI flash was damaged. After reverting the patch, anything was OK and the device is still running fine.
So, my question is: are there chances of damaing the flash chip when running on those situations where bugs happen?
and, what if things like those would happen in NAND flash devices? What if, for example, we mark as bad a block that wasn't bad after all?

thanks!!

Enrico

On Mon, 23 Mar 2020, Michal Cieslakiewicz wrote:

> Date: Mon, 23 Mar 2020 17:20:42
> From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> To: David Bauer <mail@david-bauer.net>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: fix NAND driver compilation for
>     kernel 5.4
> 
> On Sun, 22 Mar 2020 20:01:57 +0100
> David Bauer <mail@david-bauer.net> wrote:
>
>> Hi Michal
>>
>>
>> I'm not that deep into the mtd-concat hack (expecially on NAND
>> flash). We might also run into issues when migrating to the new NAND
>> interface. If you you've found a fix for this, it would be great to
>> have it up for discussion on ML or GitHub. Especially as this is more
>> or less target independant and not directly associated with the ath79
>> driver.
>>
>> Best wishes
>> David
>>
>
> Hello David,
>
> Yes, I'm going to have a deeper look at mtdconcat driver and try to
> modify its behaviour to be consistent with what is now required by
> mtdcore. Concat is a virtual device, address translation layer mainly,
> so understanding how it works should not require any deep flash hacking
> knowledge.
>
> Cheers
> Michal
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

Enrico Mioso
Personal Phone Number: +39 3807096934
Tox ID is:
7C593F402A3C8632D87AB4B948D492294C39A6A614464ECF843CA3429FB023284180472C7475

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
