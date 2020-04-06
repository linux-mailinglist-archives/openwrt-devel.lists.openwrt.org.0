Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5448B19FD9B
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 20:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOM51QZO1AMtGc/bEIzE7oDSBkKp/k6Y/O4o7bdis04=; b=GRPGVRmhTzMZnI
	xRnVKQGQRKJ8VQXL8WE5X6Wv6Q69Fdndbq1BiX2PUfZbYggqBSdbzbX5fjR+aanfKk/2IANMbpJY6
	dQDFwAtjw/bC5L/FYcNBKdxjatufSWv2iBt/8966quXYzaIr7Z1GWF7BfT47EOsJIj7RF+YmlEH65
	YrDH/CbNW2wjvLCUZgP8rqSnnHdN9VvP0eybjbwVDdygK3r00a+j1BDG1DtKSgB/8h6yWREOnsODO
	CLBNSQsqNIEt+788NG+FMux2APCUA9tuuv4TL8/56+C4lCX6y+P0CgWxdPGtiUVqkse5wwVDuusGL
	MGkKFCjq8gu6jtXZHdBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLWsK-0004eP-RJ; Mon, 06 Apr 2020 18:53:36 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLWsE-0004dW-6I
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 18:53:31 +0000
Received: by mail-lf1-x12b.google.com with SMTP id k28so329721lfe.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 11:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=DFXO9IsxOT83u1qnhIARv61WUsdYT089LFGNG57XASo=;
 b=FTaJTLQmqNQQN99ASmwIoSRwakUroXwxYiA07lWX4eyw5Qh3pG2lAJLu018YBG1JRj
 5UAgwotAwWM8ASkPcenfbSXZH07T7pcyY8VLE87UhF5pgY6AmP8kNBDWEo94XpTPYpfA
 2a3mGRUY7uwaZm3Kq14ZQmjUqnzIeIewo9VQP+XdLZnhDRmvZzskYD6/f96GmpsV+BrL
 +p6Z46Mmo69okOr9+Ccuarm5U9cHYFUEudMZmD38BW2tUgjEmJWBpFr66ryGCqIKi+eg
 DXsGRzdAOxh59awdGT6+pF5Peic6oijGVq7u35zkzeLtKP2mpiUClYPcFAu6kYdRN7Mt
 TkVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=DFXO9IsxOT83u1qnhIARv61WUsdYT089LFGNG57XASo=;
 b=pWVmwjk1h4eU1QkJz29oD+MLWhkplPMmNjKDsxbD1aNL5MxVxJ88BdCI486NefEa1n
 6/Vxeqq2rHV3DWC80aVG/UgDcsb+hW4xarFCYDzP8z+TkGbmCQ6jL8Wd/VfoXHQRf/wT
 6BFtsfCwGi8e7JQyFp4G4REKihU0cxhBJeGOT/+IZhAzLxDmeoGiAeu8U2l2511GF+4c
 Y6sV5epeUELiBDFsozEGOJqb5I1J1/6cKaSvtX055UTg76inZweWs+qgzbYczMyAt8eg
 PGsyvvIPAa3Q2imnutME6mMjJurf6grIlV44UjgM5wLumzwTlut+qq+qlolt0gjxDp/L
 DONg==
X-Gm-Message-State: AGi0PuY4TRMkjKucQOFRe5ypQ/P22WeTc+1rfi2DiCP5u258WdaycKrT
 T49ZemchFYZJcotLgHcb3W4=
X-Google-Smtp-Source: APiQypJcdkZ6PEJqG1jCx73RmqMG2JCNYXQ8oNVneO6PTy3y2/WrItPh86ozeHimkjiadfAfABUMAA==
X-Received: by 2002:a19:dc05:: with SMTP id t5mr14605015lfg.156.1586199208140; 
 Mon, 06 Apr 2020 11:53:28 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id n23sm10352268lji.59.2020.04.06.11.53.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 11:53:27 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 036IrN6S011331; Mon, 6 Apr 2020 21:53:25 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 036IrN5k011330;
 Mon, 6 Apr 2020 21:53:23 +0300
Date: Mon, 6 Apr 2020 21:53:23 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Martin Heck <princegerman@googlemail.com>
Message-ID: <20200406185323.GS23797@home.paul.comp>
References: <mailman.1349.1586192759.2542.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.1349.1586192759.2542.openwrt-devel@lists.openwrt.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_115330_255377_34C4FBE0 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Openwrt TpLink Archer D2
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
Cc: openwrt-devel@lists.openwrt.org, mrkiko.rs@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

On Mon, Apr 06, 2020 at 07:05:44PM +0200, Martin Heck via openwrt-devel wro=
te:
> i have a Tp Link Archer D2 Router

This page https://openwrt.org/toh/tp-link/archer_d2_ac750 tells me it
has 64 MiB RAM.

> DDR size from 0xa0000000 - 0xa3ffffff

This confirms the size.

> DRAM: =A064 MiB

And this.

> [ =A0 =A00.000000] MIPS: machine is TP-LINK Archer VR200v
> [ =A0 =A00.000000] Determined physical RAM map:
> [ =A0 =A00.000000] =A0memory: 07f00000 @ 00000000 (usable)

But this is from a 128 MiB device.

So you get this:

> [ =A0 =A00.000000] Data bus error, epc =3D=3D 806352b0, ra =3D=3D 80635278

-- =

Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
