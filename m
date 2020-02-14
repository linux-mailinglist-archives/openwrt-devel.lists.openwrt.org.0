Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB86915D87F
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Feb 2020 14:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HexDrWpw6dVSZWPFoUDqmZeGc2qvSjl+LyP4HHqTZVQ=; b=H3FgF0gmKf4ZKu
	bXVK7IoLorP6UWr0IKohdqqCPkmFgPdqNp6WcRclryH7d0Vs2cQ9fGA/6tQ6psZ4HhraKgDc3eDI1
	+eLRrTkJ9WGxa6Q4LNRzfmqTN3W0nxcf53BXz/IWuPlIiWoF4OkhHKAc4VhxyqJfz8FTKBjLPsj9a
	P5mpvjmAbF7OvvxTRAn3f0Q5IKe9P/y6zsfj2av9Q+qeH8ZiI4Adx9gtQDUIFwLnhFT8cM5p3SxLZ
	UsEsd1A1c4rfnjeIEBEv4ZUyuFVh6AbXewxiTjdaFEolg9nzHSLVb64zYiFW5GqXjRJituxuH5ElU
	HnFO18RtUoYvDfa9tCzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2b37-0004xQ-In; Fri, 14 Feb 2020 13:30:29 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2b30-0004wx-Kh
 for openwrt-devel@lists.openwrt.org; Fri, 14 Feb 2020 13:30:24 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N64JK-1jZW413cEK-016LgF
 for
 <openwrt-devel@lists.openwrt.org>; Fri, 14 Feb 2020 14:30:17 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
Date: Fri, 14 Feb 2020 14:30:17 +0100
Message-ID: <007301d5e33a$e5b54c50$b11fe4f0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdXjOW+/tJDSkc2XQvi3u/N2+VA7Wg==
Content-Language: de
X-Provags-ID: V03:K1:b48RsaGh4MUj0XqZ+yOcPQwKmmAqQPiVXUMM35I1h5krj8J/m8k
 Wi/7hoV3BuF1MTuD/rFJQzs66UCjSFAngIwfLMFPtbeJreCXrUfYZsBx9aG1RM05GTkbO1I
 SMcM5gvXRqgiWQ8CrdnczLZiqUDOSHR94jMpZyqEXJuo+gbj4HJf1VQMWFONmNKzgNt67qk
 WS0cweJX9lEF3m3absLMw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lQTuQyncKF8=:WGl7GJFanA08Vi0lwTi4oO
 hpBzLR0GPvK/BtaUjw5SID30myPdgocBvDTB1ckVrlJynUXKgEWW6dMWXtwhgqyubJQSUSElT
 p7BnwF4hQdOWCFGkP4qLIYa+HXoE7/D1uwNPWX9mh1jlcWagq9PF0au7lHmPYpRf4Ttjn4jlU
 LSYRC0D6+AWourCBnhzYn1Jp3yCut88aJ19QvgVTlfY/S0fQwaU1rfwBJAdIRvp43Dm5+O4NO
 rc6adQ0AIcjA5NWc4Hnp51cHgT9U3nBhz6HBhc/5rIRnLTrad2o2Sqyw+uOkEa6x0fp8uojuV
 jZVdq1KxtEGm0A5BcQf4XAqtSYtnv8rxW+D5PUwVrOm7eiBCeQ9WXbOpKek2YiAJuD75ohF4o
 ox9borMBXzJalABzUY6Dp8So1Zx0SBfL+YOWaJ6I5egZN5UItw6kGIamlDWvNDq0Ze9k+8/EU
 /UIoAYh0S4Vn5LLcCHjHO7wIZfH3zXBvwelkYgeL7m+5oAMWUrBAChaCJI6EvYhqYCc6SaUAK
 Gvka2jLOi/zrDjyZPsKrYMejeilay2H05FSSrAWLvlUrbVQECP/eHWmpWyPcq8fqKiYwMXU2K
 U52+/bqk5ScAU44H8cCg9NTp+muRR+hucTG9xz7hG1Wd+gxG21KdvY8Sn+7dAexhMqcjTgYHg
 LelKfxUXkW1bmWjZUmFsGWNFHcKMWIUIrBB/tilhspFaKLFUQKmTJg5+t5e7syiy2cKHkHOpW
 RDicgccWakM4K8F2dtE/hbOUnhLquDNVB7kHPSkLqAKCYUePwWF2frB5dbRVkJtQDH51JPqhH
 t1QQqoerbILvR94SpC+IwTLEHniKeq+sB2atqEVRq7CBxd/ElrAWoYC0sSjcyoa9zPcOcej
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_053022_973240_F6ACE129 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Renames and cosmetic changes between 19.07 and 20.xx
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

since 19.07 release we have changed device/image names in several targets to
make naming schemes in OpenWrt more systematic and harmonize them between
targets.

Today, I have also renamed most of the brcmxxxx target for a similar reason.

To aid downstream and other developers to keep overview of the changes and
necessary local adjustments, I've put together a Wiki page summarizing the most
important changes:

https://openwrt.org/docs/guide-developer/20.xx.major.changes

Though this is titled "20.xx", it currently obviously describes just the current
state in master, but will eventually become relevant when 20.xx is out.
So far the Wiki page is just a quick collection of cosmetic changes, feel free
to extend/move/adjust it or put it in a wider context.

Best

Adrian


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
