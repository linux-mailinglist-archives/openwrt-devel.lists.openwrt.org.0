Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B26BC17AE5B
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 19:43:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BExnyrKOWoKAn4RsFZSlA8JmLo6IXLUS9dMMAxmHFZo=; b=hQiAoJnQwYn4be
	Up5ZSzdulF4bisXD9fmWqrGsnHIT5nE8XdbGzZFgsvrVHsiNgoL70Ctj7u/PyfPnI/j/VNH6L/Rhh
	2+JnDq2i5gU31Us8j8tiv8nYXtJVCQAO+FSVD61hX3k7eLfwXlJ96aaM3e+TVJeejZwl3D7GSH+ma
	S6wY1C9Z6GfPeFo7kHk+BsZdmR5xjJsp+3QEtJhW8M79tddCa1OnqtC8vSGG21W8un59UvCq7Ymgn
	WjqmJSivYXb5POhaNUEJiMonYzrgyHQ6ouTFDfiUds0Cphlmd62ZOIKkFBj+SylX1Haik1lNKRi/w
	3jSlrsDFk/fOB/bKVhIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9vSR-0001v5-Uf; Thu, 05 Mar 2020 18:42:56 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9vSI-0001uo-L2
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 18:42:48 +0000
Received: from acer ([88.117.238.145]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Md6V3-1jjXWC2iOJ-00aHkO; Thu, 05
 Mar 2020 19:42:35 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Roger Pueyo Centelles | Guifi.net'" <roger.pueyo@guifi.net>,
 <openwrt-devel@lists.openwrt.org>
References: <20200227134625.48028-1-freifunk@adrianschmutzler.de>
 <20200227134625.48028-2-freifunk@adrianschmutzler.de>
 <cf52ef4e-2f5a-bbdb-cc0b-4d847fa5ff28@guifi.net>
In-Reply-To: <cf52ef4e-2f5a-bbdb-cc0b-4d847fa5ff28@guifi.net>
Date: Thu, 5 Mar 2020 19:42:30 +0100
Message-ID: <003201d5f31d$d742d460$85c87d20$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQLUJzdjkWH6Rsk6oe1eMeryhULtrQF/bv77AYYaR02mJb818A==
Content-Language: de
X-Provags-ID: V03:K1:ifd+eq34/sgvND5w/JehvEH1Rt8rqp2EDLa26+l/D1OvwJIsw6i
 y/29IKml64oCpWWSDRBmE7o3JFkOYvFx72IUyHZjVSqNOkZY7gGoR4hDYGjCp6fig2JJtjm
 3iXt1Ydji29m77j2EakjVveeqLn1zupUccg6cf1Y3wBs9YiO6CyJKhjKPCAvX8hGYKWql2/
 lH35vKsO2USAPo0xiElsQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2UPdMrwoKfg=:619roHk+b3sIrxnee2SQDg
 q1Ja4pIURvTuphcaq8S6Ug6DyWpORBu4rQSLEYH7zP9EUWSJNtYeFWephA9aR2eqmlSI1AwHU
 80vPEmLNC9eFuojdktW8rFYtQnxQPjMPJNtcNfx+re2j4wEu4kWtGsslNZVo5wWV/Zz0f8w2V
 qn5ZrMnUj1ewk5bbHZxBhGfC6G8cjoo3Vsh6hBVDC3FxOBfRGssY2vF4HUDMqYLeHqmktI9pX
 RqxMSovBPdbudeeNPx4Umh2421YtFv4lxONOqgCq/VAJ2T14HwacIKkYGghnGTFuMZ+qZ5Q0I
 oWb0qMil2epmAbyS70KL0rec4IFxMUvjod1O2ClhNcPGZhy87gba43IdAE8YzDQdoBf4Gy4kF
 8G8JO0reHF9lgRyNqbUD0qFDy2C5Y/+5tMu6ND1iJtfpJ0RRQSIjvSf5dz8MrhBna99pX22QU
 pZClCBumL4YsqhvLGnDV5vW+IBaSxpZ7OMS7AANxl4QCBHQtOSYMKykyS90jwM+tOPXVEKuzW
 bgJRJpP0GgHwtq1U817v67u7OgcaqsnTxusibwuLMEwYqvAvnsmHmXD58KLdkKPRLkILn/LKZ
 sq0P/sO5/ihf+qFh4HaCA83IhGdSTk6VL+syuDn1+fTRRENrLHo3mLCSqIrSOfQSDgWFQgiZd
 7GaMLLWL1o1rbR0p/LI6NgwkDbuJgSHnHoJyyNbn8MqqKa4i5sUEbeh53vEkV7XdFku9rauNf
 bEwpOzmJkpKw2sOYhnwsmoRO7dwBspVqHF3jK7N1DrOSrRggoWDvLuavytXJiUOtq6J/0ef9A
 rnexZJu/CsXUnIHD5MvU2SA+Y0JXi69SWjone1dEYGlDVFnAa3aNHOSGGFcZ2eLmyj8xgwY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_104246_984781_E298F615 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: fix and tidy up DTS for
 D-Link DIR-810L
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> I noticed, however, that the green "Internet" LED blinks to the LAN4 port,
> while -I guess- it should blink to the INTERNET (wan/eth0.2) port.
> But this was already happening before, it's not related to your patch.

green internet LED is not present in the DTS (only orange WAN LED), and there is no entry for the device in 01_leds.

So, the LED seems to be controlled by some driver ...

Best

Adrian 



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
