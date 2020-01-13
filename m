Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40541138D2C
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 09:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bw4WfEutp7+RFJD+AKFr3fjBE4XU16tUeXqS9RS5Y20=; b=ejAS+N79en/RqBcSAUwzd6jZg
	e6ZA7hcdONuWBAv2S6RUYgdtRfO48rbw4NLsW2oxNZ7GVRc6zUGntJUu3QCIF9RcvEuKokudPHhpK
	Mu7AhuauOgTR5r7BzdtMi3ae++jFNdxb2LeYKabEJb0JxMRJ1JQXspl3vmXSfM8Hhp4FEmHtGz5wd
	9D2/lzCmY/eRV8Xa99nBPDOGVYQgDWSKqAAgbG0263i0dRxKwuVgJvOMmRpD74OoKy9QcljEUUfLG
	0v6W7GL7Y1EyuQCImwa5r7vaJr+FYmTUEeNTfd7osXFL3FhwrutJCi+8CJFzyU0Z/TZGACpkJQvxq
	ue0YXFpMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvOI-0006P3-Sh; Mon, 13 Jan 2020 08:48:06 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvOA-0006O9-Py
 for openwrt-devel@lists.openwrt.org; Mon, 13 Jan 2020 08:48:00 +0000
Received: from pd95fd66b.dip0.t-ipconnect.de ([217.95.214.107]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iqvO6-0001CM-OH; Mon, 13 Jan 2020 09:47:54 +0100
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Paul Spooren <mail@aparcar.org>
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
 <mailman.23954.1578870359.2486.openwrt-devel@lists.openwrt.org>
From: John Crispin <john@phrozen.org>
Message-ID: <e1aca052-b7ca-e611-c67b-fc3b03662e5c@phrozen.org>
Date: Mon, 13 Jan 2020 09:47:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <mailman.23954.1578870359.2486.openwrt-devel@lists.openwrt.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_004759_002616_6E9533B4 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 13/01/2020 00:05, Martin Blumenstingl via openwrt-devel wrote:
> can we automate this somehow?
> the device tree files already contain most of that information.
> 
> (I'm all for providing good data for the TOH but I'm challenging the
> idea of doing this manually)
> 
> 
> Martin

Hi,
I think this will turn into aproblem where functionally sane patches 
will turn into hassle to get merged. we could encourage folks to send 
the yaml file as a companion email I guess.
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
