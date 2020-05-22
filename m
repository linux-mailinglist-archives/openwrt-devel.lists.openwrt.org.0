Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C861DEF1E
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 20:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NG8FqTU+9R9exAD/BxKHtb3EUpUjT2xhWZwR5UvRM80=; b=GgCfL2cW/pGCeho/kvfRh6/2h
	SnSIwM26ouLRwCGMGzkAzJdLA89q6s0i4KTRHC4NloSBW7wynxhFk2uIUMimrg/NDKJutPETIfEEv
	KF71iu9V1OoqlBYzh/OLen1/mCqxgvcZJmMs/q4f22U4D0kYAvUx16kFA5d8Cj2Qq8I2BPXWi2ONt
	afdmuGOlmMAuMbwcp19HEeR8olBZscp1E0/n/UW/aXZqeOEnkXXEDLAdEy5EemEwMZ3/M9nDq8m4U
	wtp1bkHK97QZBXnaFgSyy9aAOBH66k1472FBGKKv6QnQmr1kRCIlUNu9Oru2rDu9mhdYCmRvA8xDI
	hW1YaYR8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCNP-00084v-Ut; Fri, 22 May 2020 18:26:36 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCNI-00084Y-VV
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 18:26:30 +0000
Received: by mail-lj1-x244.google.com with SMTP id l15so13444696lje.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 11:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qpNf2PFU6Gvn1hjmESTCCDm9d/GUSPTh84WeNFtUpWw=;
 b=p6eX3rhQpABEW4fHHFTsVWkhf2NkYrj2TCOHAxRVzrHvaUIPqbdV+PXUu03oADU6bD
 bVwcEWUgig79z+gf5t/iG5qBbVKeXDoU87NmCgnpadtLM7FkcJGKjAXk1grGSsFFKjRs
 p+Q3FOOcVZekaoYRMUyo9p1tuDz4BFaHi5V5iPXc1J83ralyKibxGFE0TUpheI0js8HA
 mokVclIz4rNQ5/meW1ZaSjnrlc1L0Axjp8tKUdqL9NDHdchdPcXnC3+Aj0tfAvg2uGFL
 EpoHB8YMpEf26OlRsvkTrUhWxsg5ixTYdtiIH4vgCpdVUx/YO2FtovbAH4RFv+aK4Z0G
 BTdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qpNf2PFU6Gvn1hjmESTCCDm9d/GUSPTh84WeNFtUpWw=;
 b=rcZKwvIuR6tgERZe2hcW3le3l6swXfWQqVnedW6UitCBJY/nQL033bnHKKEWcd0NGj
 Isr/a/lByNNPODUbO6+FbIrPhzHn+K+3XfoAk5J31g7RnFT02Dv/QIMWGsfG9yfOQXJX
 Dbo3oUwSBP/pFUc4jS0gpMbhNdEjLaJOSX3+GQHiAjkiX8AF9PCzW5A9rULzpkRzfDlG
 AnYByRiG0Dbx9oGZ44b8eZabRR7BVwYHN0Uvx1UANg4AGPasIkg/pZME+HcY9IwSS88+
 rCvccwTJbcPBOwGdufh1uWFBuNxFIzIFDNAfWpInu4zD7hLmZ1H5F+yaYIlC3lbk/tHM
 d/Gw==
X-Gm-Message-State: AOAM533hcxczEhhpOqk8QxZEw2nrUZ5udqUvsQbyqF9wLwO+EkseFQjk
 zx/RRCjI9hGWJkdPGqVdyRvuE7iegLE+9O3cDMQ=
X-Google-Smtp-Source: ABdhPJwcC9nD0QUiYzZofh6qYvYP9x3HP19dHAkfP144R6FxQ7We2/rqjfMFyccOnDaAOcb8PImmZbmH2X0A5UiBUS4=
X-Received: by 2002:a2e:95d2:: with SMTP id y18mr5868205ljh.321.1590171987372; 
 Fri, 22 May 2020 11:26:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAK9yiZBMx2SRcA8-V5nOoa=XhF4QZM372EopshJUbmATctQgAw@mail.gmail.com>
 <016e01d63062$ca598140$5f0c83c0$@adrianschmutzler.de>
 <CAK9yiZCffBehf-RP9vT83wYw5ChmRXtdCVmtGDb5GNtobk0fUw@mail.gmail.com>
 <019701d63065$874a6c40$95df44c0$@adrianschmutzler.de>
In-Reply-To: <019701d63065$874a6c40$95df44c0$@adrianschmutzler.de>
From: Olli Asikainen <olli.asikainen@gmail.com>
Date: Fri, 22 May 2020 21:26:16 +0300
Message-ID: <CAK9yiZA-05dua=j8pnVv+Ob6vOf67z3HGr4CkrOtKLgbeG8RTw@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_112629_029752_A352A0B4 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olli.asikainen[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: kernel: fix awake-rt305x-dwc2
 patch
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
Content-Type: multipart/mixed; boundary="===============4538698420688239113=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4538698420688239113==
Content-Type: multipart/alternative; boundary="000000000000706c7505a640c445"

--000000000000706c7505a640c445
Content-Type: text/plain; charset="UTF-8"

Tested-by: Olli Asikainen <olli.asikainen@gmail.com> [WS-WR512N1]

On Fri, May 22, 2020 at 9:19 PM <mail@adrianschmutzler.de> wrote:

> > Sure. I am a bit new to this, is there something I need to do?
>
> Just answer to this mail with "Tested-by: Full Name <mailaddress> [your
> device]" in a separate line, and it will be added to the patch
> automatically if somebody pulls it from patchwork.
>
> Best
>
> Adrian
>

--000000000000706c7505a640c445
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Tested-by: Olli Asikainen &lt;<a href=3D"mailto:olli.asika=
inen@gmail.com">olli.asikainen@gmail.com</a>&gt; [WS-WR512N1]</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 22=
, 2020 at 9:19 PM &lt;<a href=3D"mailto:mail@adrianschmutzler.de">mail@adri=
anschmutzler.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">&gt; Sure. I am a bit new to this, is there something I need=
 to do?<br>
<br>
Just answer to this mail with &quot;Tested-by: Full Name &lt;mailaddress&gt=
; [your device]&quot; in a separate line, and it will be added to the patch=
 automatically if somebody pulls it from patchwork.<br>
<br>
Best<br>
<br>
Adrian<br>
</blockquote></div>

--000000000000706c7505a640c445--


--===============4538698420688239113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4538698420688239113==--

