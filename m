Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75478D026
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 11:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZifwrzENNqC7K025JAMkUjSXSM8mJPCaA95b+qzEobE=; b=cJTpZw+/ZM2T9D
	44QfEvu1PgP1OgW3FhGOyAStHCf1MEDfFjpT7w9+APd5tyIOQy9ENrxt7eh5FpKvDXwc9wu3NpQKZ
	DgzK5w4zkqzbKmdaAXntCbtHCyuDvXb0aeO4dYuSf892PsX6YmnBRFGjTK7T/QcBBl3o8nrgRUiuY
	H7rNWkRi6887Y5ReuNIBfUA/cf3GIshIjlBZXjktHeeHW/D1VvtwsPGp0PEWdLKmv8y5qawRl+NWE
	F+KbIS/2AHD0pDZ2yoJ/wwqXSQOlx/RxYm8Hx+mjTzZ2e3jMd1P4jmLzH2HDmCWcLCkzyMN5mN5Lb
	3eh7Gwr/pCspC1HvzIqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxq1N-0008QA-Gl; Wed, 14 Aug 2019 09:56:45 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxq15-0008Pn-Mw
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 09:56:28 +0000
Received: by mail-oi1-x233.google.com with SMTP id o6so2866296oic.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 14 Aug 2019 02:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZTkhirq31ULPCguxIcff65wxC/hVaYwHa2yF8u/MFKw=;
 b=CeSb8KBnwcGHQtz1a1TzL2+bqk1IGm6zqMFXY6lIqIlagA5fPSorFy3g79XJE5vjA0
 zA+uRu4w9lTnJpwxg27RJ/gyl/mIa5KcuMBa05um7e8gjIBmMfdjPJkmOSpbJEeUMOok
 HBRg49KjoeP/7/l4DLQIQG0Em4Mzu603BwQ+6J7cJwHOnOMruyL297Cnl+ObuP3s4gfn
 IdHpEn4INRzcwnvLPyCbPafUJZjA8AFHCg9hiKacLWWMq4lVLusgq8ks3ebPPM8lpjZf
 YTfm5hk1ktoTIbmtrNEUyTBEmB50uUYO9y6nuUjnrNcuNY9Sbf+Y+VEOyilLYaNW6r2e
 lUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZTkhirq31ULPCguxIcff65wxC/hVaYwHa2yF8u/MFKw=;
 b=RRKwjpQTXpB3OyN7RkpK/9DjqZjI7Urp9NrUJ3wryJgGk7W4vxh0Sad/C1Lhk3xzaJ
 +PkDk83EKZkVoAbverim0FcGZR8V3JsE1yoJGEAzvb06ZyKLeNxCn4uC1VZpaM4Aj5zW
 YPQK5/E6d4kmvwsTTb2NibuvdY1CtLkfFg5BdRRJqeRKVHcAbF9CJgQyZRU5kCKk2Wno
 q8xyfGiwK4g0T5qECM7OJaBYVy1w7EUTkT9zD0rzsYx131OgxFdrFHDItcJ24SVbFiBI
 3+m6zjO7xvU0QqSP/9SGLMz3phJ/PkpVgBftylQEopSPSeE1Ofd5c8gBtYNKAflY6Xs5
 fKMA==
X-Gm-Message-State: APjAAAUCxDzl8TtPBqrcYViUf+H7wk+uhnXsf1XmtxlqcXA+sHWqTHmT
 /ObDmXhHVj/VJfidr3JQ7UJSATR8uVriS/qUe3c=
X-Google-Smtp-Source: APXvYqyAVwdmjoS/AXsUSqO5cFgNRtA74wcPa0rnbAVPJknykMNk86kfNXsFL8slBjNKCnaVZ9yU657h9uD279rPQc8=
X-Received: by 2002:a02:37c6:: with SMTP id r189mr2518815jar.118.1565776584918; 
 Wed, 14 Aug 2019 02:56:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224446.3334b7e6@kosmio.komorska>
 <000b01d55108$a98631f0$fc9295d0$@adrianschmutzler.de>
 <20190814105922.1c713789@kosmio.komorska>
In-Reply-To: <20190814105922.1c713789@kosmio.komorska>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 14 Aug 2019 12:56:13 +0300
Message-ID: <CANoib0GTYyPHJk8V33tPOzL0Wgmkm64AeVYRgRQUH+kwN_ZUbw@mail.gmail.com>
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_025627_774739_43B3CCAD 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:233 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath9k: mtd-cal-data vs firmware bin file
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> /etc/hotplug.d/firmware/10-ath9k-eeprom for these routers just extracts
> 4k of calibration data from ART to bin file in /lib/firmware. I
> compared bin file to mtd area and they are identical. Why ath9k cannot
> use this data directly accessing /dev/mtd6? Is that 'mtd-cal-data' dts
> option for? If so, why does it not work in this case? (tested, ath9k
> initialization ends with error)
> I recall there was no such operation in ar71xx target and older
> kernels...

ath9k node doesn't have 'mtd-cal-data' property.
Regarding ar71xx there were special mach procedures that could
directly load caldata from mtd.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
