Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2422817E40E
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 16:53:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XQz1m9rhYL4jMTG5l8iVyrZD8hkLMEnUqRSC8umQtI=; b=XU2pi5YEMhe9D4
	UR28kyYKORaRWoiCmX+195OGj64Ig8Wd+tqrAESCAwoAuyTNZSfor+Bn5wwkm+7v7jniCdW8gBlWI
	jUfF3P4NbDaeYZuZs1hXpkynziuijq7npEHwVb4YHbJdxKbHmkXc9zeNdBY/jUtigzBzdX/bowc1X
	eJFmB39LWRpdiYPutrb6FYzIUY8sop7chTm279jGNHIkfSZI1cg2a4sksmreXXker9VmSppLwohL3
	KCrYIH+/3TRN4qWfPfjOP7uNZ5pdrZg1opDOoGRSttZ7jP+fNAsoDym6Ng8w98QlGy+7pMkZUSmVR
	PhxhaRfuyWCVmZGetXzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBKik-0007Of-F6; Mon, 09 Mar 2020 15:53:34 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBKie-0007O0-45
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 15:53:30 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M2wbS-1jCRBO0l1I-003IxL; Mon, 09
 Mar 2020 16:53:22 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Stefan Lippers-Hollmann'" <s.l-h@gmx.de>,
 "'John Crispin'" <john@phrozen.org>
References: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>	<008801d5ee68$1c393ba0$54abb2e0$@adrianschmutzler.de>	<20200228213033.7df0aacf@mir>	<4ec68236-6677-f396-c7cb-291c5fac4247@phrozen.org>
 <20200228222052.25fa02f1@mir>
In-Reply-To: <20200228222052.25fa02f1@mir>
Date: Mon, 9 Mar 2020 16:53:20 +0100
Message-ID: <056201d5f62a$dc2354e0$9469fea0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHLgIhYUTHTDif2poVhR0QO80WFxQL+FnQXAn+FQJUCqSDsYwC7s1InqA5AylA=
Content-Language: de
X-Provags-ID: V03:K1:QlhbxayEoPekirx/w/kEgFXNspJI+sBrbiZwZhFYM0/ySBEJCRy
 oI/CfGOCl3xKrNLNiT62DTkX/nLTVCfSZTPlRJNBYUZ8/edV2MD0n31wu12FGFJ7wEuyYSh
 L01EDcjEX/a3p23ZzF4ZoxBZcFtTIUjhNcgfR70DLbZsLkayfl7iZjPxLwCJIJqObnweQO8
 Ul9KMIoZ6ppunRe8sa2BA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0/hdsDt7w6g=:hl7boJZiotVT7u76uRCZEZ
 794jpOWEjtwNQeV3vRSXfuA+c/T4Ru44OjSlFd7cCfKTtThVDmtiVJcTjwWo4PRuaN8NWL6hX
 Q/dIstvT79fyAMD+70oDz2+I28PHybhIRm/JZjTWYZh9eWdcqyoahHvJv3+4C8PsGLajttQ6t
 rvpGUkiyZVPKRLAUN6rH9+GIIQZD70y/10laHgvwwtUhivdBNE2oEcMYnZuVBWHV/RB16k4yB
 uWH7u1MqByi6NKQs4DMNPRiF/Ly1Cb0lGv+K3sfZsuoDzw/VtIcG8hvSylxRu1/frlpugM/EB
 +BGApVJeg/yz/ZVeRX21S4959nYDUobwsFKNHfrfV+RZ8s26ymZBm8LWXpDd94EpYoU9cD66y
 tkaRsPR0Ki1R6o/Cw6FCEm0h0JLo4IUFQPo+1Zs+n9Pt4qOswYFrMwi/DdwoUKbef1QuiOT2J
 BPFzW/7zlC8EEvn3NDRgReETlKs88uSLgdqE9CNR1L4ywMXq2NhLA1JmKXri0p5oYyjRdxcnJ
 aSysxDZfzNcCMG+L8G2GrtsuHpRRUXmraB31j6BXro0vcbZt9+qS9TVhX1h1rzoFcDQIfC6T6
 /sCmLvyLoPlDCAkEOMHSMU2gfm1n++g2n1+/E7zvkNcvfezZ4ntz3lAxwZsJyDXLg3HaZt9Lf
 RvgGJSUFs7j3m+W1/aW/GBCiPPLXzumfmOKXzEqnjsQwKCG7TebnDZOXG0apk/BqOa9DuXpAv
 BaD7KQH9hrqn9feWF1sNfdmaBBtHwSCC2XatoySoFlXJxLmZkuJ4dfJDCsrDr70WhCmPkAagg
 fQy/pi0ROp6qJQFu17LrmwY2kxuXqn+IlgIQMZQQcQD/Efqoy0EXtFqQX34OCncaSFoJY+E
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_085328_460983_4986DF79 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] RFT: Add support for kernel 5.4
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Chuanhong Guo' <gch981213@gmail.com>,
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> -----Original Message-----
> From: Stefan Lippers-Hollmann [mailto:s.l-h@gmx.de]
> Sent: Freitag, 28. Februar 2020 22:21
> To: John Crispin <john@phrozen.org>
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>; OpenWrt Development List
> <openwrt-devel@lists.openwrt.org>; Chuanhong Guo <gch981213@gmail.com>;
> Koen Vandeputte <koen.vandeputte@ncentric.com>
> Subject: Re: [OpenWrt-Devel] RFT: Add support for kernel 5.4
> 
> Hi
> 
> On 2020-02-28, John Crispin wrote:
> > On 28.02.20 21:30, Stefan Lippers-Hollmann wrote:
> > > On 2020-02-28, mail@adrianschmutzler.de wrote:
> > >>> On 2020-02-28, Koen Vandeputte wrote:
> [...]
> > > ath79 with kernel 4.14 has already been (mostly) broken by "ath79: add
> > > new ar934x spi driver" (ebf0d8dadeca443121f4f597c51bf6591e341caf), which
> > > does break the (shared between all kernel versions) DTS definitions for
> > > NAND based ath79 devices (breaking compilation with kernel 4.14).
> > >
> > > Because of "FS#2524 - ath79-tiny: TP-Link TL-WR941ND v2.4: Marvel
> > > MV88E6060 regression between kernel v4.14 and v4.19"
> > > https://bugs.openwrt.org/index.php?do=details&task_id=2524 I still do
> > > regularly build ath79 with kernel 4.14, but in order to finish the build
> > > I do need to comment out the affected devices:
> [...]
> > >
> > > Admittedly, the affected TL-WR941ND v2 (4/32) is barely worth the effort
> > > anymore.
> [...]
> > sorry for being dense here. what are you trying to tell us ? is there a
> > bug for which you propose a patch or is this a report or just a rant ?
> > honestly cant figure it out
> 
> Neither, nor. It's merely a report that kernel 4.14 support (albeit
> technically present in source) for ath79 isn't functional anymore (and
> hasn't been for a few weeks) anyways, regardless of the introduction of
> kernel 5.4 and its changes to ag71xx. Kind of answering Adrian's previous
> question "By moving ag71xx to files-4.19 on ath79, I suspect 4.14 is broken
> now on this target."
> 
> Beyond that, I'm merely explaining why I'm still regularly looking at ath79
> with kernel 4.14 (because of the aforementioned regression in MV88E6060
> on top of kernel 4.19). While I still regularly build for this device and
> sometimes boot it up/ flash a fresh (kernel 4.14 based) build, I'm well
> aware that this device is far beyond its prime (4/32, buggy draft-n AR9103
> wireless) and don't actively use it anymore. Therefore I consider this
> flyspray bug more as a heads-up (while ath79 with MV88E6060 is rare, the
> underlying cause for this regression might have further impact), than in
> any way, shape or form 'important' - and I'd consider commenting out
> "tplink_tl-wr941-v2" (or removing its support altogether) a valid
> 'solution' (just retaining images for it in its current state in master is
> problematic, as they are broken and because the device requires serial
> access for recovering; no push-button tftp recovery provided by the OEM
> bootloader).
> 
> Regards
> 	Stefan Lippers-Hollmann

thanks for you detailed explanation.

Is there a specific reason why you build based on master and do not use the
19.07 stable branch with working 4.14 support?

Best

Adrian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
