Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D869FDF5C7
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 21:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LRN96mk5eH22+s7EsE8QnFwPSmmvL/viMPDocpKJ0Zs=; b=NZ/tXf3OHsIz6elp4DGv24ofs
	pzbkMj53nqTfTsi+q9bQ/YnOnmboOvcpAs4JbEJfbXcW63a5x6hx5oQqe9Zgm2vfBHbbLeBpzRaCY
	soHvtgONGHeLX9rYDBlK9tPIXOhoWzKAdt3L6GiYC4bb8rzMxo6Cl1NozwPNQstPOuoZbjllSwvr9
	qI7ihyB4Cqepc7cFDwOQfLZ0OlT5/++TQ5QqVxoUeSze7NQMF3LMC1R/N5PW6D0J1Wsq2xU1XgBuG
	uAkz8gEJUiJclwAID1xMU56iZCrZi31YoIIYxO89ZocTo+iBdi806ECZ6/uxmZRMw7h3w8rITwSgG
	OzfBcdjTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMd7x-0006ns-Ka; Mon, 21 Oct 2019 19:14:01 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMd7l-0006fj-EO
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 19:13:51 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMd7i-0003hY-04; Mon, 21 Oct 2019 21:13:46 +0200
To: Kristian Evensen <kristian.evensen@gmail.com>,
 Robert Marko <robimarko@gmail.com>
References: <20190831093936.20621-1-kristian.evensen@gmail.com>
 <CAOX2RU6__MtzhWT5XRcjAXHaLqxb+u4970y8Pf9UjGUAdkdp+Q@mail.gmail.com>
 <CAKfDRXi=cm5ZrhHa7fELDqjCXhB=GNorViqmMy0zB3SM+ZLqYQ@mail.gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <c112f44c-a060-b24b-0feb-7c03b3577203@phrozen.org>
Date: Mon, 21 Oct 2019 21:13:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAKfDRXi=cm5ZrhHa7fELDqjCXhB=GNorViqmMy0zB3SM+ZLqYQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_121349_724179_BACD6C64 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ipq40xx: Add support for Unielec
 U4019
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

On 21/10/2019 20:09, Kristian Evensen wrote:
> Hi,
> 
> On Mon, Oct 21, 2019 at 6:07 PM Robert Marko <robimarko@gmail.com> wrote:
>>
>> Merging this today has caused a regression in ipq40xx.
>> PHY reset patch was is the issue, it now forces devices to have GPIO
>> for PHY reset which most devices don't have and if it's missing it
>> will make the driver panic and probing will fail.
>> So please revert this until its properly resolved.
> 
> I am very sorry for this mistake, making phy-reset optional completely
> slipped my mind. I will not have access to an ipq40xx device before
> some time next week, so I am fine with reverting for now (unless
> someone else can take a look).
> 
> BR,
> Kristian

I have started a build of an ioq40xx tree and will cook up a patch for 
testing
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
