Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EF31FA1EF
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 22:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KQVBilu/iu7Xo28+6CawAwCCPsPjE21ywd49s6E22G8=; b=U9i9BS8wFVEj9VbsRU6CIlvmw
	Rb9rwnYgNMd7b2b/0K33rozp6CBdLvc4QzxDaUUBtwR7r2OVgGRGtXI4i5c7qexc/yfEqVft/PZ+l
	SAtNH12NM5opH5FoNV3Grm4vmPrJDy4Pu7GBC2XTmeQRH8MriiHe3iZ4r8cpQrG0T557WozRbAkjP
	reLkGGFdVmVZeIZ5m4MJNeJHVeYBCEPqqdp+ISMQIKigyglNSmWyIemoAGxNSkurIXXZBq8ZangvE
	eU8KpVkboIpjsrDWhN5XfE09UF51MvsgseXCFJPX6O4Vow8eDdRGjQWI93e0kvSSekki5kgODBnfJ
	QSQXoRfww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkw0i-0002i7-HU; Mon, 15 Jun 2020 20:47:16 +0000
References: <2235597.0Tboij76b4@tool>
In-Reply-To: <2235597.0Tboij76b4@tool>
Date: Mon, 15 Jun 2020 22:46:57 +0200
To: =?UTF-8?Q?Daniel_Gonz=C3=A1lez_Cabanelas?= <dgcbueu@gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.23442.1592254032.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org, noltari@gmail.com
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: a226m-fwb: fix linux partition
 offset
Content-Type: multipart/mixed; boundary="===============0122846108781211918=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0122846108781211918==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0122846108781211918==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkw0c-0002hg-Cv
	for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 20:47:11 +0000
Received: by mail-ed1-x544.google.com with SMTP id y6so7260739edi.3
        for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jun 2020 13:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=zkgGx0l1hR/iobHrM5dwAu//ZdIgcnD8p7wb7CSqRcU=;
        b=vAaYu8ZZESwjF3MBD9ISvXct5jbmnLBkBmFvRwFSxmwXephOIpU6tFQCfc+imf23Q8
         CC1ddjVCzaC6KAYItVy4WEz07qRWfRhf6v7rRkJUra2mDwWjJPLz46ousIs67IAPppZZ
         M2dFiV7kHnJyIC48Mxg6Ej3Tq5mVLhoP2I3qx3MXZ1djdZlCpX5G6D2pABIoiSx/gXzQ
         +qypEgu+hR2Cohk7r3cjEWBdD74X7zosIlkX1LwBviYdSru9ujdkYkS33/oiX4NlhlC/
         FTGgbiE8wVQC5MVD81qUaVDeidnw9WB0fsp1FTZaZUuASMpGVRAtlK9pMiuV4rx7yq3v
         NbgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=zkgGx0l1hR/iobHrM5dwAu//ZdIgcnD8p7wb7CSqRcU=;
        b=Co0EavgaTNPG4H7jE1q7DV220b5VWJntdXI3TA/LVBj7bx4f6PZb4h4ysgKG0EplJj
         M1D3NO3h36vWKuzGa21jbFmAK+mFabs0oevEviTOVqJOaDsGOUhVbeoujGntIzf8U9Ao
         qY6GvbMH+4SGTZi2+zsTiNRfazklempQJJ4NNPAfs5KJMH2fS5niGiIFtK2ojuuGv2Qq
         DQmmu8WOCUg/dtBsjMjPJllRK+FS+m1tB6aV9bOtw4LtSZIwa0GE8u0wKkNwpkqJZ6Wu
         /j/OVXVzl1MeY30FiZo8j67FtPSuO2oukdiVYuvsqo6ESkfw4UVCe1vxD85ov/wWB/F3
         8K7Q==
X-Gm-Message-State: AOAM530FA9L93KMeZUDgWLgE0hNW/RaQ0wtYbSKGHuL8xqhXgDR7lSXe
	2waLTPKfYSdcDDxuO+WzDcJ9aUleKfqJDd7rdmc=
X-Google-Smtp-Source: ABdhPJw+XTZD8bqfIELnDr8a69xr5qXDfpU4MiEKO+dC4QbPcBtL97Ka42diA4z1RrhKBkqv4Cw6iJHxe982qTnh+iA=
X-Received: by 2002:aa7:c41a:: with SMTP id j26mr26164225edq.13.1592254028179;
 Mon, 15 Jun 2020 13:47:08 -0700 (PDT)
MIME-Version: 1.0
References: <2235597.0Tboij76b4@tool>
In-Reply-To: <2235597.0Tboij76b4@tool>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 15 Jun 2020 22:46:57 +0200
Message-ID: <CAFBinCC+MOxkpuqeU1uet70M+ncmhwFAYG-pV9wCE9urDNY8RQ@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: a226m-fwb: fix linux partition offset
To: =?UTF-8?Q?Daniel_Gonz=C3=A1lez_Cabanelas?= <dgcbueu@gmail.com>
Cc: openwrt-devel@lists.openwrt.org, noltari@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_134710_457729_BE7DBFFD 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:544 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Hi Daniel,

On Mon, Jun 15, 2020 at 7:52 PM Daniel Gonz=C3=A1lez Cabanelas
<dgcbueu@gmail.com> wrote:
[...]
> diff --git a/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts b/tar=
get/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
> index d0b1e55213..b477fb40de 100644
> --- a/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
> +++ b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
> @@ -109,7 +109,7 @@
>
>                 linux@10000 {
please update the unit-address (above) as well, otherwise tools (like
dtc) may start to complain


Martin


--===============0122846108781211918==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0122846108781211918==--
