Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF1517020A
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 16:13:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaSicB5ZAx1j3TN/lI5hi1d1FG9wl0ua6r0qAPv0CLc=; b=PD4hzpUp4j5gow
	KJX97Qtt/cMVpc4tIL6/N38I0BPS6t3V/qRvF/72wyTCrviyzREIgU1UCjqHCm6wMVKmfwjQLcf9j
	GvsNNj6WVKzrdt9SHfNAnz/NH1T8HfDE5VO7AnTVnNRes5dJYGPTwGdk/+dhXM1QEolsAZqOk/txW
	XyAHJxg0BD/QpzCByif3sgxait5dcJBLU8efV6/0Z2gK4f+pcYYK2s9vQhrEdUz/+Yg8KywlrCjHl
	SW5etK7FH5CPOl4SngMj334LKA4E6vy8ERYJrxbwEvX5Y64YX/2hWVwjhr1SksaWTIVzuDauzG1FO
	nBsZYbFolgYyxAZ3TWaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6yNM-0004TZ-SH; Wed, 26 Feb 2020 15:13:28 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yNF-0004T3-RJ
 for openwrt-devel@lists.openwrt.org; Wed, 26 Feb 2020 15:13:23 +0000
Received: by mail-qt1-x843.google.com with SMTP id d9so2441317qte.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 26 Feb 2020 07:13:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RWId67W7m6TtdAIehFrCuU4vP6NjWqXrTSRd3M/Ay6I=;
 b=m41+5nxbFK6lXJnMyfdl2+FE1ZeQ3g34UKDD3vcKEOJ0O5UYiq46Cw+g7MgjNfuhBP
 K/rHacEzbGaTLTIN4Q8cPMlXt/OkG+NRBL6MGp3z3ihtA6X4hbGmpp7+NjBamneH6fSp
 nlvUV1OOTaCTmoKCm9BVldzWqDOX+gs0oAjnhNDoYiFvnk+vISl4veCxsSQRcC8bpEeI
 Y2V3jae1Awn8cgdeJGobGshNEhH+6+QbGRPQQnyZccdTALGVq39GJAr+8UFNMYLzk6TJ
 Ry+AmktGs4i82eCqQsK72Ix4XtLD9xwslG2rU0YO1Y0tu+kb+hQ0Z/3/Kg/+F7lj1jr4
 +/Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RWId67W7m6TtdAIehFrCuU4vP6NjWqXrTSRd3M/Ay6I=;
 b=pUldpq5k1vv0iLRKCzjS9L/clwxRaqXJ77vvkxSN62YmKfOOoZpFNcwE5VbeCoIG/o
 m0l2guPjQBxa+CojZume94tKD2ZCgOIYh2D/BtU1yFddJk8auXLSKF40TP+n3YN8Rk11
 gobgDcaRXv/WQv05P1iV/BDbWMrvKRj6Qvg+O89AYASIsM29yTAxNi7wXwtTD3LHzSpF
 521E26AekprRBXYe4zOP9EmBZBz4iNKJj+Z5Z8sDcb3inDXs1qMJxC0aRaHR5RAjqP0B
 cVKSQ5hXzGjod8FUewzKDP2TxOujoeSCFZ/rNeaD2mkyCnvmmGbR5jMB4kz/mWJpatFd
 cPuw==
X-Gm-Message-State: APjAAAV2F/nh6tNXsjsh6r+eaVrBQVz1p5/O4qeZzXFd4q5J4WFBTdqX
 onFqwXN3+pJwKOmILQ74Rv1GmpkNn1ATSokOr4pKdJrP
X-Google-Smtp-Source: APXvYqw0qohOj28a9U0bXu7moGVyCOD6RGwODhf/5ekiaeIz6O6KFzRJuGOIL/qMZjPOJ6iq5ec9sCDV4DSjgOOe9cw=
X-Received: by 2002:aed:2e02:: with SMTP id j2mr5360279qtd.370.1582729998159; 
 Wed, 26 Feb 2020 07:13:18 -0800 (PST)
MIME-Version: 1.0
References: <CAPxccB1fkreXtLxb06yPdRjhk0ruvvV+Yf+O+SHvMeESuNFqWA@mail.gmail.com>
 <52C4ED1B-FFFC-4E45-A3A9-A6F222C1818C@oranjevos.nl>
In-Reply-To: <52C4ED1B-FFFC-4E45-A3A9-A6F222C1818C@oranjevos.nl>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Wed, 26 Feb 2020 12:13:07 -0300
Message-ID: <CAPxccB3wPu-7kVJGyqG=KkkKLy1Awqux384j334qfvQU=sWehQ@mail.gmail.com>
To: Paul Oranje <por@oranjevos.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_071321_909591_A87EAA8C 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ipq40xx: QCE/crypto fixes & enhancements (PR
 #2518)
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

On Wed, Feb 26, 2020 at 10:48 AM Paul Oranje <por@oranjevos.nl> wrote:
>
> Having read the whole conversation: an impressive piece of work.
>
> Could this helps with ipq806x ?
> On ipq806x qce isn't available on all SOCs (supposedly only on ipq8064) and therefore support has been removed from the kernel [1].
>
>
> [1] commit ad07166ea7286f350628f1093e4385db9be63d31 (ipq806x: remove unsupported hw-crypto qce driver)
>
> Regards,
> Paul
>

Hi Paul

I'm glad you like it, thanks.

I don't know much about the ipq8064 crypto engine, other than it is
not compatible with the ipq40xx one, and that's why I removed it from
the image.  I looked into it superficially, but couldn't find much
information about it.

What we can do right away is to enable the neon/arm-asm modules, as I
did for ipq40xx.  I'll wait for ipq40xx's fate, before I apply the
same logic to ipq806x, and perhaps others.  If I were to just grep for
CONFIG_NEON=y, but not CONFIG_ARM_CRYPTO=y:
$ git grep -L '^CONFIG_ARM_CRYPTO=y' -- $(git grep -l '^CONFIG_NEON=y'
-- target/linux/) | xargs -r dirname | sort -u
target/linux/armvirt/32
target/linux/at91
target/linux/bcm27xx/bcm2709
target/linux/ipq40xx
target/linux/ipq806x
target/linux/layerscape/armv7
target/linux/mediatek/mt7623
target/linux/omap
target/linux/samsung/s5pv210
target/linux/sunxi
target/linux/zynq

Cheers,

Eneas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
