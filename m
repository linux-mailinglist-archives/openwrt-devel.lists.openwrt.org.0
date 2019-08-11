Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8E68918D
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 13:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p9RUOGfLdq8K1aD0fqI/UtoWespBtR8XJ6VTXL62Jm8=; b=FetXYj+CoO34g07K7Cy3CC0TE
	z/NudHES4Q5vRzf25PyAIQ6WCidhnosm1CWymn2tv4cIt7F6A4eK73YSn8ltKdVBdqRl4nQ5293+r
	ccZdaJGiAjxOwvh5ikQxt4BXaYrpP1PuAfsYZLVRaDCm6Wjm5sXVpl2OkOCn9vSrAJ4iFrBNouOlD
	N+GYt0p64aWTxM0ge934/mN4Ha2Gdyd1PbVpOCPPotkZMbY8kzPpp3zdcnIPF2AfvK9lID1e36Pf8
	kNA1VWq5i/MH1H9tsvcV46cek6xNFnzRYTwE7xQXK8+6ONlkMU33PZoyrW+Ui7MUgA0SAiGYqe7Lo
	Y39jFb8KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwmBI-0003lv-0r; Sun, 11 Aug 2019 11:38:36 +0000
References: <2f56d90d-39bf-7f63-0676-e0856e6d9f15@birger-koblitz.de>
 <75e48acf-8bfa-5101-3f9a-02ae2cc43c0a@kresin.me>
 <de6aa12b-8e9d-413c-7577-16b4d400f725@gmail.com>
 <eb294211-eeea-c830-ddf5-77ee9a279626@birger-koblitz.de>
In-Reply-To: <eb294211-eeea-c830-ddf5-77ee9a279626@birger-koblitz.de>
Date: Sun, 11 Aug 2019 13:38:16 +0200
To: Birger Koblitz <mail@birger-koblitz.de>
MIME-Version: 1.0
Message-ID: <mailman.16176.1565523511.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: use gpio_hog instead of
 gpio-export
Content-Type: multipart/mixed; boundary="===============2168390480868146217=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2168390480868146217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2168390480868146217==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hwmBB-0003la-SI
	for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 11:38:31 +0000
Received: by mail-ot1-x341.google.com with SMTP id o101so14496828ota.8
        for <openwrt-devel@lists.openwrt.org>; Sun, 11 Aug 2019 04:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LgR/l3UibPoE78koXcBgjctpKfKyG6oYmzUmIhzKIGc=;
        b=rp/MKG6pNlUqtLicn/pPpzqHzWBZYoXL1ld2Z4h3hvilri7mJibwlHrXrIZz0z5dep
         A8rA30KC/1fnHDGJ47NZ4ECB1vBtzs5oyrz9LO8BCnZOLFrQUWdeum9YqwfFBO8y1yX2
         7bCV1PTQAwdT1o9ctIAkUrNb8lW0zakQQXQ8u+qAcDJ7L/AWVScZ3HcEwdY8v32BNxP+
         mla05GDA0ll9sXfEdlWfM/DvgXxFQY1/kc8u5ZVMKvFLXEama+RivDyXoALimYC1AwbH
         +l2BVmtS6wjXE157q4cRJn0iD8DXOkZK8wiLiXENCvHGjZuDBMc0rFBUaIUFXGUAv36J
         l7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LgR/l3UibPoE78koXcBgjctpKfKyG6oYmzUmIhzKIGc=;
        b=maLzk9o8ANBbl7uJpgR/WTxK4h0K6ZnWjST16POd+rN61Tf6v2Ve1w3oJP4OGSE6OS
         pbzoksl33vWF4Max0iu9U2gVjCoAY5kr8NC29m+OwejW4Blc8OSPPshmRsihdndSfYy+
         fS4HLQROje0bhNjLGFNH6Kgr2eJHl8nxP+6Dk054IR3BVIvOmTQihGljZpem+6I2WS4i
         xHEujv5mvL5qVJGcYqa1zYp99R/jH2O3y8uJYpyqbCQAYgRPp8MZWb4JRWWgmQJ8iQU1
         f6gc1jP9fBgDxZtMlFKlQ852n5v52bcnhutdLS4PMKLRxuITeQoZwbcALkTzCSohA6LR
         tHjQ==
X-Gm-Message-State: APjAAAUNaZMi7opG7JQ14c6Tm4kmakpM5u3bO+AOgcZdWunIJcy6bm7U
	h273xP/07DDZaGEzp/ZMAxl37IzUMnu0Tt5TKfix/Q46
X-Google-Smtp-Source: APXvYqz2Wd2+h7+54bdZkyCROlWSunWOI2AucReHZPcvqiFkp7Y3pvO+XftS3W3fdhxoX0yIsnrwtu/I6vqrWjICwqk=
X-Received: by 2002:a05:6830:1e5a:: with SMTP id e26mr11223483otj.96.1565523508005;
 Sun, 11 Aug 2019 04:38:28 -0700 (PDT)
MIME-Version: 1.0
References: <2f56d90d-39bf-7f63-0676-e0856e6d9f15@birger-koblitz.de>
 <75e48acf-8bfa-5101-3f9a-02ae2cc43c0a@kresin.me> <de6aa12b-8e9d-413c-7577-16b4d400f725@gmail.com>
 <eb294211-eeea-c830-ddf5-77ee9a279626@birger-koblitz.de>
In-Reply-To: <eb294211-eeea-c830-ddf5-77ee9a279626@birger-koblitz.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 11 Aug 2019 13:38:16 +0200
Message-ID: <CAFBinCBE1XYixKzCmzm6e3Pe06sW6K-iR8-6gBSc6VXJwdncQw@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: use gpio_hog instead of gpio-export
To: Birger Koblitz <mail@birger-koblitz.de>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_043829_944357_4D495485 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:341 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

On Sun, Aug 11, 2019 at 1:00 PM Birger Koblitz <mail@birger-koblitz.de> wrote:
> I'll go through the patches and remove anything that sounds like it
> might need user space configuration (i.e. not power the USB bus or the
> like).
upstream GPIO maintainers prefer dedicated properties instead of a GPIO hog.

some USB controller drivers support a "vbus-supply" property, which
can be used together with a GPIO regulator
in case of the VBUS supply it means the GPIO will be turned off if the
USB port is "disabled" (for example by unloading the kernel USB
controller driver).

I'm not saying that you have to switch over to something other than GPIO hogs.
switching to an upstream solution is a good starting point!
just be aware that this may not be the final solution

> Is anyone working on converting the use-cases which require user space
> switching to libgpiod or any other solution?
how do you identify the "use-cases which require use space switching"?


Martin


--===============2168390480868146217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2168390480868146217==--
