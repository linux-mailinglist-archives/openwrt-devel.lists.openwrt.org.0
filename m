Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC558F734
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 00:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vUJHmAu8+gpSzCPO0BMrSToPhFKlvbnr7gQG4a6jSco=; b=ICdRfyeqpNxGWfP9Nl6COug7c
	h3x0LakALcwPNMDZfGfUtVj/NPVgdYMLCzf8XQDStavA0gH73xcENoXB1CPwr72SZsBZ7hmAFvaZI
	/fgUnW7CaYo6J+XJq3X8Ti4QqOXJchVvk/sWTwmtD3ela8iWCxeqiFPW0xt6jVa9QEB/Q+x0MYj1l
	xzCwr51FGNgrFCJZrnWBjUrDCzcbwOzwzWpiypvlejBFns6VHJG344oHU+r04Ow29eqby7sv2UzQu
	56kyhwoZw0qcNiWaQefpox7eWs83rNZ/Z56N8Ow8GUN6P7HSaEeozyVzISG03NqY+Fm6dRjIcszye
	NZM0m0+KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyOYx-0002EM-Mk; Thu, 15 Aug 2019 22:49:43 +0000
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224446.3334b7e6@kosmio.komorska>
 <000b01d55108$a98631f0$fc9295d0$@adrianschmutzler.de>
 <20190814105922.1c713789@kosmio.komorska>
In-Reply-To: <20190814105922.1c713789@kosmio.komorska>
Date: Fri, 16 Aug 2019 00:49:15 +0200
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
MIME-Version: 1.0
Message-ID: <mailman.17359.1565909370.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] ath9k: mtd-cal-data vs firmware bin file
Content-Type: multipart/mixed; boundary="===============1521199200147568774=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1521199200147568774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1521199200147568774==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hyOYi-0002E1-BA
	for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 22:49:30 +0000
Received: by mail-oi1-x234.google.com with SMTP id o6so3437884oic.9
        for <openwrt-devel@lists.openwrt.org>; Thu, 15 Aug 2019 15:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oiUEqDO0j9SfymophpQ5NDhwchzMBSE/wd/ZSJquIgk=;
        b=JTwU+Cdmi6Ixi6hs5B/OUrvgUkPPvk+ZlwU64iJ6Gtyh0co9uBWppVtQLwVaUde7tz
         hsDNkiKjJ9F0qJjNU5MeIl3wuQ+dUJieqROQI+nTWQ+n3cJWGu4HNxNgcPsf+thlZko/
         /ZcdSgf1d5o/O/G1KdzrVcGsTw8KhEeahA+V+jFw98lSEIClV+iz2gYvtPtjhVDJmla/
         293uIHIkOMbbrA2kzjkW38unS4Pzv5eWLgPtHmn7YXqng0xw4Ltj44dpk3szmPRCZWBg
         OAqwke0oXRoVA2qCXRoi5hDr72SL9UVKGrwtgyZ26Hh+7bWzymNq9qv/kK/1OdGoU3OI
         j+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oiUEqDO0j9SfymophpQ5NDhwchzMBSE/wd/ZSJquIgk=;
        b=SEB8XT/R/NDsDfLFnbgKKBjcboBbVnXBszxPUgW85H2UTLmJkz7l7g0YQZo55bzy41
         BQKvUlgGaO8vzBH6BAxayogXvxH8nDYmtSlBopReHMGv4vMZJrFwdR7b0Kwk1YeiW6Dr
         IF/z3Zlko5uYVGyxneS3QXdz60JQIC+lGRvWQ0YIWwf+hBK995ctkvNFqNrrvQpUrq5c
         +4Pdt/mM5tQkToF5v1fyTJe9IQl0wKzuJeFT1z1+SIl0vkBKP209IrujOgFwDEJiNC/9
         2a3bzw0FQN9L67NmyOGQ/3j3RLYdGi7bEhwSw4js/t01jRwn9efS9F3xQj8V0FagZVKf
         eT7A==
X-Gm-Message-State: APjAAAXTm8skp62Bgz+C6dKFDtZLXU+7DjIfdKRL0BziRGRDthFKBVwq
	ocOqgyhvV4rtfprEYT8w04/MaEiSljyQHBsW3pA=
X-Google-Smtp-Source: APXvYqyLap55B4/EHPpK39MHAlgLw3DX6IiyHUhCkjJ6d/Uxp0adn8KWYVNCI+WixfRq6DoVa8Jj5WD/CmS6uhH1I3o=
X-Received: by 2002:aca:d650:: with SMTP id n77mr3342725oig.129.1565909366558;
 Thu, 15 Aug 2019 15:49:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190811223921.572cda5b@kosmio.komorska> <20190811224446.3334b7e6@kosmio.komorska>
 <000b01d55108$a98631f0$fc9295d0$@adrianschmutzler.de> <20190814105922.1c713789@kosmio.komorska>
In-Reply-To: <20190814105922.1c713789@kosmio.komorska>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 16 Aug 2019 00:49:15 +0200
Message-ID: <CAFBinCAJax9XE+NE4A25qkuWXSJnxog6JtnSK2FfjDkcEZU=Hg@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] ath9k: mtd-cal-data vs firmware bin file
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_154928_410324_1603811D 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:234 listed in]
                             [list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hi Michal,

On Wed, Aug 14, 2019 at 10:59 AM Michal Cieslakiewicz
<michal.cieslakiewicz@wp.pl> wrote:
>
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> Hello Adrian,
>
> Thanks for helping me with WNR patchset, one question came to my mind
> in the process of developing it and after reading one of your emails.
> Sorry if it has been answered elsewhere...
>
> /etc/hotplug.d/firmware/10-ath9k-eeprom for these routers just extracts
> 4k of calibration data from ART to bin file in /lib/firmware. I
> compared bin file to mtd area and they are identical. Why ath9k cannot
> use this data directly accessing /dev/mtd6? Is that 'mtd-cal-data' dts
> option for? If so, why does it not work in this case? (tested, ath9k
> initialization ends with error)
> I recall there was no such operation in ar71xx target and older
> kernels...
(I am the one who brought the /lib/firmware based caldata upstream -
these are my thoughts on this topic)

upstream ath9k has support for retrieving the caldata through the
request_firmware mechanism (which requires copying it to
/lib/firmware).
some out-of-tree patches have/had a special mtd-cal-data property to
achieve a similar goal (passing the caldata to devices without a
physical EEPROM).

while I upstreamed the ath9k patches for request_firmware support
there was a bit of a discussion.
the discussion was whether the NVMEM subsystem should be used instead
of relying on request_firmware.
my primary target was the BT HomeHub 5A which stores the calibration
data inside a UBI volume which cannot be referenced from devicetree
(yet - or at least at the time I upstreamed the patches it could not
be referenced) so I still chose to push the request_firmware part
forward.

most devices have the caldata at a fixed location on the flash, so the
NVMEM subsystem can be used for this.
if someone wants to get rid of the caldata copy in /lib/firmware then
support for reading the caldata using the NVMEM framework could be
implemented in ath9k (and owl-loader).
the result would be close to what the mtd-cal-data provides, assuming
that the NVMEM subsystem can read the underlying data structures on
flash (AFAIK this currently excludes NAND with UBI, which is used by
the minority of the boards with an ath9k chip).


Martin


--===============1521199200147568774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1521199200147568774==--
