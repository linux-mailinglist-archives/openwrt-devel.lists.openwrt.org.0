Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBC1B2AE0
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 11:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/T7pu61oZq6uHGOpnS1SAQyDCswBJEsUi94QT4zJHDY=; b=sGTxiymmmfF6Su
	/istNyKpoDat1V5Q9dm3Nk9i4SZwAc5RSAlvpKTf+y35/pnwdcTGIHlLkjXBjoHeeiNLEw3f1AbQZ
	3800fHdRcoB0aP+JbCQJqW59607qW7Uxm7lzezE0WkBaB4V9xN62HwEc50JjApnCP5izEIbgAIbzj
	o9YH7xX+zpdrfV7ViuRXJVOc/8dxIIbAKHVBUBe7usGs8Bbw4sLWErA0LlQk2vcKn7GBqVPCZuMrQ
	3P7bZGw+oDNkpCFoYv0jNbi8a+aOOQleHpr0PvTl6iUbMQweI2qvJp1FgkulR/VtRequz5EWQTJTc
	aZhK6c8AsK36RAYW8vgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i94kx-00061C-7l; Sat, 14 Sep 2019 09:54:15 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i94kk-00060o-Pe
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 09:54:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id r5so312406wrm.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 02:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vcj/8FJiwdQPaphzF2ruVqPU6R71CVN+Hf+asPa80do=;
 b=YzuT/FjYJDUtx9hlEoslBk3LEOKtADv5MA2dPj+Eo3UV3GXgLGaHo4RgbBw+oDCLvw
 pAFGO5SOdIYekaQCYM8MD2w9OMd0NEyDQ+3C8G027p1KeC1Jq1/fRHYBD6yXC5c+WJEp
 1W22cUXurcV8vVH0xtB3Fk+hwT3H5ENB9M31dK7jl3yctqTKvscz7PsDvJirLvsHlGjy
 K7esLCnP1ocAyZhnJkfp472f4Eip4KrgrbR/BgCRACLUm8e+AP66RyOGMiYS43E2/8uU
 FGceHvG8kb/b5TPhynQTs1LSnyiBgReTT0OLPkF4YL5qxI7I/pTqN7zozWVOuOGR+UKB
 YlZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vcj/8FJiwdQPaphzF2ruVqPU6R71CVN+Hf+asPa80do=;
 b=qW2GMHX9ZlFzMuKhPoNSxkAVo+nP/mh4A7msQXDhhCdhGEr6y5fp1+GwqzPXiQA9zj
 SaX03z+WFKKwB6gbSvWOsdXcQovuYrRxMxBnx+a+6Ga1SzBRXERH6y5XhE/sgRW6AYEs
 3Q2vwb3YELYExFsE4na6b1ZfHUdSukO2kvEVp22znah7DQrxv+YuuHCSKCDlRsYaU7M/
 cCfaMwEBO3NZYoL0AL47rV2v3z5IHG2jwBrDaYF0fiD5VFEpJz6/FUyKDCsSjkTp2naL
 bZYZoWsJheHxE88N5sligpVrXtHyrd/OEBpUNELVVtXq9i5eunOQZhPYjVJndQaDzriI
 yyoA==
X-Gm-Message-State: APjAAAXidhmHYFqTxwerijvoOa/FFElPiMsOIFejSyzRH+DOqC2e0GqM
 Pl9G4F+u9aAAnVjRa7fBbjxpQcnLHDaqYqlICI0=
X-Google-Smtp-Source: APXvYqxGW1CLdQGKJapd3QDNx1M72KS/x0zH9YAyUAt1rqGhz0gt6zPjyli9MGysimbdEQXL0GqwSmUpsLkcUx55byk=
X-Received: by 2002:a5d:66ce:: with SMTP id k14mr19817972wrw.258.1568454840269; 
 Sat, 14 Sep 2019 02:54:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190823090237.9471-1-mail@aparcar.org>
In-Reply-To: <20190823090237.9471-1-mail@aparcar.org>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 14 Sep 2019 11:54:03 +0200
Message-ID: <CAOiHx=mT7i73+=B-_OXQD4SUHpd3goAsGJoaFncOKcFFqKgrbw@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_025402_858887_40E37512 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: add Generic subtarget if
 missing
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
Cc: Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>, Roman Yeryomin <roman@advem.lv>,
 Tim Harvey <tharvey@gateworks.com>, Luka Perkov <luka@openwrt.org>,
 Jason Wu <jason.wu.misc@gmail.com>, Alexander Couzens <lynxis@fe80.eu>,
 John Crispin <john@phrozen.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, 23 Aug 2019 at 11:04, Paul Spooren <mail@aparcar.org> wrote:
> As in 853e4dd OpenWrt should follow a unified structure, where every
> device has a target/subtarget combination, if there is only one
> subtarget, call it "Generic". This introduces predictable filenames.

If it's about (I assume generated) filenames, wouldn't it be easier to
just use "Generic" for the subtarget part of the filename if there are
no subtargets? I'm not really a fan of unnecessary code fluff without
any real function, especially if it means additional, mainly empty
files.

Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
