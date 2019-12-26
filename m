Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EF512AD42
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Dec 2019 16:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AeG0Uj89Qgqbdm0onVuQ/EZdp8EUCidb0u11sAmsyuk=; b=fgG+4BIU5SOxLi
	1SqsxOa80ZF1bRWbqK/ycgAd8CCSYm62RmNqsGf2IA/OpNmQzl0nlKoglHkLzwbHTZtyCTAeETAHQ
	bOvEWMs+xgy1/vyIgA21dzfeBxUgxkDa1NRkqfvVD68wTc7IC9cZpVOIrNj1v0g0X8w55torGCuTY
	S/kqFp2ijGv0huRz0aRjfA3ZdzBNq7QymGnHBBiZhFl7HQNMSGXDtoB0+l9jawGlihNDFgNRhW9ep
	1/Vv7RrjwDoOTrshfi3EbrgoV3ZnYT0qSl6ZhnJi8iILJu6iQr45/F8FsZHawmVEYrTehz5DEbKlJ
	ur4bRjj9kJ63ifW4vAmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikVFk-0005Za-CG; Thu, 26 Dec 2019 15:40:44 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikVFc-0005Z6-8q
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 15:40:38 +0000
Received: by mail-ot1-x335.google.com with SMTP id 59so32893109otp.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Dec 2019 07:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=+6ia5aa6ejLtPBETbV9OlaSFU+AzY8RKtcGJQ+3M2iY=;
 b=svz5/L6W04fLuhPlmwCwCus8bxTaREfmFbB/MA0ixBHuFp1AshGfDusJ1w1nHC2WiQ
 AgWZJK7dLD9wYytR7bY65ZCV/JzGNoq3gs/t9DmUn8Rf6RFW7bkunhKahu/mFM7yPlSk
 QbzZXDuAG+wYct6kl+AtiHULzLJaM6dfeon+Pdt5DAoCJoFAbVKUF3EPSXRyFGE0o5SN
 +p0zNa3EhGaK/dVrQgfwwJ33x74h0WR9kUSaVJqvkCkOY4P/tOU40LyjYvFwRD0L68L2
 Nds0Wrv4X5eX1yLy+q7xTR+QQm+sqcm9ydo2ugGHX8bbHUmOvLm4tjbq8g7uZ+W+5tbu
 hjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=+6ia5aa6ejLtPBETbV9OlaSFU+AzY8RKtcGJQ+3M2iY=;
 b=WXKML85fDfYwREpehzNu+0VOYHDyrrbj5oSEdq/pAE/pYTvWsoDEt+Z7XoYGZ+VX98
 fn2lMARHtMmP/6WHUfnfn3o5DkaouhMU6I0bHNfvjoD9iyMAlfuLIGz+ddhrV/W0Rl5p
 +t7bQ5ABXaXNTxD8kHCnZYyd2eH5NMjs3biEoCXs27ngx6YvdXb5JZ1Hl6FJeWNCYNcs
 NlykNh/iqzysq7n7800iBv+7ttUxMp0UhSFf8p+xRjdKgjZpmltrtbollBMRBiZ8Easc
 bTVtwNMCQtzMSm8z9WeupafHCKrjM5uED7jy96T2YIk0puu6VWfMAx4vNdz74Nfuj/2l
 WbLQ==
X-Gm-Message-State: APjAAAUh+MrIHzZUuA28nEeV0ONzDWfT++rr/X7KNUvDTMkFCJ+x9CJ5
 yqmY1isbCDk6hwtt5zpT89vRZBgapaVJaxRVVng=
X-Google-Smtp-Source: APXvYqz6El4KmuMMdUlSJcW3f31KZKBCO+kFFNOdWk1svSHTRai8sr6dQB4mELsnnqeGul3LTdGSULopccCSH4o5oqg=
X-Received: by 2002:a9d:6b17:: with SMTP id g23mr49211953otp.265.1577374834361; 
 Thu, 26 Dec 2019 07:40:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Thu, 26 Dec 2019 07:40:33 -0800 (PST)
In-Reply-To: <9cce8066-8f7f-31e6-8f54-f4301a3e4f5c@hauke-m.de>
References: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
 <CAKR_QVJ3bFbFpCy4vDx7g2R_8qjBJUva2EHo6AK8TvRuhVcuYQ@mail.gmail.com>
 <9cce8066-8f7f-31e6-8f54-f4301a3e4f5c@hauke-m.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Thu, 26 Dec 2019 16:40:33 +0100
Message-ID: <CAKR_QVJVcahMf0o-dCR1FGAOXixPSiGc_BEE559zMLFoEL5T-A@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_074037_238779_80E763DA 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
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
Cc: Jo-Philipp Wich <jow@openwrt.org>,
 LEDE Development List <openwrt-devel@lists.openwrt.org>,
 Ben Greear <greearb@candelatech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 26/12/2019, Hauke Mehrtens <hauke@hauke-m.de> wrote:
> On 12/24/19 8:50 PM, Tom Psyborg wrote:
>> Hi
>>
>> And what about this one?
>> https://bugs.openwrt.org/index.php?do=details&task_id=2593
>>
>> Some regulatorty bugs?
>
> Here is an other one related to ath10k:
> https://bugs.openwrt.org/index.php?do=details&task_id=2614
> The reporter says it works with an older ath10k FW.
>
> @Tom: could you please check if it works better for you with an older
> ath10k firmware.
>
> Hauke
>
>

No it doesn't. 10.1-ct-8x-__fW-021-4fa9f30 is same as with 10.2.4.70.70
It appears to be mac80211 issue.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
