Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE751DEE76
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 19:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o5bIi3PF8a4ktpFJ5EQ66q0Jg7aGngkH3ZAFkOzKoYw=; b=p18
	H9boBvsUvzLRpBk/bjIKMoyN6A1L3szSBa/K7IfwzUu1UDaGdFP7uzcLTQpj99wBGDTgm3vz92xnN
	Vv8KGGDBYO+RKQZ7NYfrrgsOuWLRWV/D3AIgtiYWPc/j9pIO9I4+SZnRcSyN8ceD07llTBZlwWT3z
	kElnbZghvyU9/HRVS6VArmird5HrIOtjwYU1wCMpzP5pfM2kr7Qt5oafqwlfYEKSQQv8lT1DGpPFn
	RkcGpxOhaBPMF8EsrXK/AbC5UosEhUtNyVfTw3L1ItpM8pCV3x61ik1okLvagKzvEnEC2eF3sojYb
	JtHh1opE/GXPfHMWyFd49pjc898NQkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBgw-0003aG-1t; Fri, 22 May 2020 17:42:42 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBgl-0003ZX-OY
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 17:42:33 +0000
Received: by mail-lj1-x244.google.com with SMTP id z13so3969222ljn.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 10:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=hY3X9J8E3dBmpLnIZWBo4xcL+Eayn3o5Ig27K9Npga0=;
 b=Y7r1v4ljjSGFNvMkBS5uo6Te+mA/vCfYiTK9aDvn7YbAk0lH9TeUY0eIPGmMsSqu1C
 sINKuIm1+0ztzxZb7ELmDoFIs9McfRyfx9BIHQveoUpXYUw7Zv6+KSWIUNOcLXcgWkX9
 P3WrpfvhFG0dVmyK+YDXSPb95AtPK98vkin0FMeevInMii2BfGrYcugLlcUD7pwcLRol
 oE5PUiEUVAmyA7QZ3iIRYlFNIy5cFYNEo6b8VvCxMuniz31quF6RkqQoj3LIypfwnuvc
 0MSxvy5UUnAcQKdRVGYfLvkOEBaY7ZKWuU4GIBMNT+ZhVIiXRi9PhklByrezE83nAgHt
 BFZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=hY3X9J8E3dBmpLnIZWBo4xcL+Eayn3o5Ig27K9Npga0=;
 b=oAYYaZkhZMljdDC7gPGm/h5P0cURHZ4w5lvA+t1y95oOkWjri+Jv/Jo/ezBDI6fe2Y
 crNEVtai5ebUeB6PaFuJi9YPmyM+FurCuP8itSCQSfJuKzvSHsciXLWHK4ukc+NgVfqz
 ZM+o61Ow8qBT+IzmPcI43Z08qah8dWahgdcpNCZR4jiwS0yhE6jhThshLrT3uZb44VX8
 nvh2hywVaxRQ3t5470B+f4DsQhF+mdk0mAOolR/nN6/FZNIPfqfxvcrijJfHABziqYSz
 zhzU2f0ZVQjwEsuT/81ObDEDpg+cvrxqvlNfKeWjIZ1w88pV/LvyHXGsHywxXL3AZEwz
 20bQ==
X-Gm-Message-State: AOAM531HIfUQ3/hz8wlGSKwqEUCa0jpxQkGpNuGmlhH19ScLlvnsG/M8
 AGI6nkoDbObzjWcTnc8ZAcBaRASFC7T663FctsRoonVNF4Y=
X-Google-Smtp-Source: ABdhPJytKeXaDzft25c2vP586rdgD3Fe4c1H0GY3umHXLKalVyYoStwr4CpVsfrpcGNiFAAQQxwyUCwBmEjreYpcXhw=
X-Received: by 2002:a2e:9159:: with SMTP id q25mr7403815ljg.95.1590169347843; 
 Fri, 22 May 2020 10:42:27 -0700 (PDT)
MIME-Version: 1.0
From: Olli Asikainen <olli.asikainen@gmail.com>
Date: Fri, 22 May 2020 20:42:16 +0300
Message-ID: <CAK9yiZBMx2SRcA8-V5nOoa=XhF4QZM372EopshJUbmATctQgAw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_104231_816091_1D73A5E7 
X-CRM114-Status: UNSURE (   3.25  )
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
Content-Type: multipart/mixed; boundary="===============5437360436125858836=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5437360436125858836==
Content-Type: multipart/alternative; boundary="0000000000001c6af905a6402787"

--0000000000001c6af905a6402787
Content-Type: text/plain; charset="UTF-8"

I can confirm that this change to awake-rt305x-dwc2-controller.patch fixes
the USB hub initialization on WS-WR512N1. USB enumeration works properly
after removing 0032-USB-dwc2-add-device_reset.patch, too.

--0000000000001c6af905a6402787
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">I can confirm that this change to awake-rt305x-dwc2-controller.patch fixes the USB hub initialization on WS-WR512N1. USB enumeration works properly after removing 0032-USB-dwc2-add-device_reset.patch, too. </div>

--0000000000001c6af905a6402787--


--===============5437360436125858836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5437360436125858836==--

