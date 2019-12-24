Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E0212A41E
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 21:47:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBuOPgvXbPXv1QQOtW/BTMNe140CJ+NOwMh3qZifca8=; b=Gm+h+ehS0Fty/b
	UpulmtCv+19scnNZ7J3Dz724ungoKurk7r119DmHzOi6keCMmnEWKpuQc0G0ciHwxUyVComSMAnHh
	pThsIULr4VO8CdztkCg4i+zGoXOoEBxQrSf58Zh7IFRq7hwsc6F5VS0iKMAcZoW2TBxRVy7zqhXDB
	yXuOowy+w8lCdX1tbrsbToYbydNN6J1ptKIQTOqNcKIZmuCx39cEGD4JGNIB35BgZa6Whw0quageL
	W/i3pPMRuy8s+PDRLKvdydi77hLwt+s5Z9SkR+uGxmTp5lCUcXEi+JwI9YqN+kVV+nhRZTrSrjpxP
	dFPBUiFDKVFBOVuMWZww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijr5o-0002AK-IA; Tue, 24 Dec 2019 20:47:48 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijr5g-00029W-RO
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 20:47:42 +0000
Received: by mail-lj1-x243.google.com with SMTP id l2so21622664lja.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 12:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=U+qyBpeItNVn6TZmDuHsO+ckCWaFWBsadMQll501mno=;
 b=SQk1BJOy28deK7tL3G0v0SCm2T8RdmvqhG8S20tjZApApZItpoiUwq3EUvtYQGBxtr
 YUGuK1u0YMzsj1qu9NxasaGj5dj9ulWPcNjrh3YeDlnylogtaW9gBiXBloyRdh1ZGHRR
 FAQ/HO3VOATIMvBS1V72YejL83OpfLc+bTr11HkojcMMpa2/lKBzO4mcEs4EXCo3yurW
 VjCpKm3B1yJygFkSzdLAgSiBmiYwuv4r4oKy19BsLq/1vcEgHFVcHA1fp5c2sTXkZ0ue
 3KB8tDpQUBKXxlRS96uMueyjECnBNTCsj5J4E9P16Hw+3LrNrnKRNUpDaq1tCS1CNYMD
 OJCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=U+qyBpeItNVn6TZmDuHsO+ckCWaFWBsadMQll501mno=;
 b=Z/SH1b/ZzHhDB3n2cgInKIGhBz6NAvKXUkynv+gjxdRrW+P9iOoUfwsV/Je9IYENi7
 yA9SsQd9c8sEykiRkLQnTqjd3oV0C3YrQLl/3eoLC/QOdJaGm0IVT4EdH+XKqhn6MEKK
 ung5HfzhEMZwk9u0DndMuviUvLN1FPUJZmSANMeIyitgq9Fi4FRiJtvifdgyTAufB3VV
 evFJXL81a1NKhyBDspBBkkXO/TIG1zD99EehEP+T/78J3gmNdlorlxNmoHAcpfiUZ6tR
 xgoaVnfRAuiD9X7vvHLsmdmYbL1Tu1B6bvyh/p+udvzAmUtcM4D9nOZKGU9issg98Pl0
 I/mA==
X-Gm-Message-State: APjAAAU2KR/7qAUaNZg2JciJohKs2/VS5jlNmdPtrtvZ9lxczJK8vUfX
 sLyBHB5a8nXtB8d3H9bXmj8=
X-Google-Smtp-Source: APXvYqxh+bp2D43PkZfqePobVN74mZw4MzUBgYnL4YUcXTXnE/st9dm0idnoFFsX/0Fw6792s+BWvw==
X-Received: by 2002:a2e:9716:: with SMTP id r22mr21805588lji.224.1577220456071; 
 Tue, 24 Dec 2019 12:47:36 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id n30sm12543035lfi.54.2019.12.24.12.47.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 12:47:35 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBOKlWoL015088; Tue, 24 Dec 2019 23:47:33 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBOKlWsv015087;
 Tue, 24 Dec 2019 23:47:32 +0300
Date: Tue, 24 Dec 2019 23:47:31 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Lech Perczak <lech.perczak@gmail.com>
Message-ID: <20191224204731.GJ11377@home.paul.comp>
References: <4d6e1b57-d2f5-0f53-b118-4b999d4f15c8@hauke-m.de>
 <20191224164820.14245-1-fercerpav@gmail.com>
 <82947a82-d7d0-7dc7-95ea-f3e623091d54@gmail.com>
 <20191224194709.GI11377@home.paul.comp>
 <bb008c3d-eab0-2ca5-6a42-23c854e2c431@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb008c3d-eab0-2ca5-6a42-23c854e2c431@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_124740_887838_DE79852D 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: tp-link: use
 ath10k-ct-smallbuffers for 64 MiB devices
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Dec 24, 2019 at 09:27:21PM +0100, Lech Perczak wrote:
> > On Tue, Dec 24, 2019 at 08:26:09PM +0100, Lech Perczak wrote:
> > > I think that TL-WR902AC v1 should be included as well, as it is 64M device
> > > and I also experienced issues with ath10k-ct on it while porting.
> > Device like that requires the tweak, no doubt. But I'm not feeling
> > like going through the whole ar71xx target since it's deprecated
> > anyway and whoever cares should port the needed boards to ath79 AFAIK.
> > 
> This device was just ported to ath79 recently.

Indeed, it got right in-between. I'll send an amendment to this
tp-link patch, thanks for noticing!

> I think grepping by device trees could be used to determine devices which
> need the changes.

I have an impression that RAM amount is autodetected, so grepping
through DTSes can't help here. In any case, I think it's all covered
by now.

Thank you!
-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
