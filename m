Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3C03444A
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Jun 2019 12:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2QFz6ASyeId1eJ22IbsiGGemevhKyT6ngAlH/DoiLTI=; b=FKS0F40e3f3uEY3KIs52KgCtp
	FWrcpcpkrcVU5OZl5oxOGMr5Pjl2oerwaYFw+aIuCn3r5ONLwLgYcvwum0sH7OnEF6khlW1p8ttfq
	FQLVscafXykOUtAcfICRN90WA9IRN+qNLlJ0NO3v3FS1BwEiqk6XWMN9wpC04ehIVCuP2Yel0f7SP
	s/qMfnyMTO2py+JeyYdCt26ygay+cYajcIQy6DqTT0yp/FFbmGhiOAfOqEuI+5lBbU+0e2lCsBi9i
	H32OQ4TEfXbseh2UEmxFXsNxF759YTcG/gV/bug8B9ENOAXPRHKeiYhuZrzssUxieZsf+0bDsTbNx
	rTCGLTGag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6Wm-0004Yc-FE; Tue, 04 Jun 2019 10:18:48 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6Wb-0004Y0-G8
 for openwrt-devel@lists.openwrt.org; Tue, 04 Jun 2019 10:18:42 +0000
Received: by mail-wm1-f67.google.com with SMTP id v22so14104582wml.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 04 Jun 2019 03:18:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SsxyfoBCs93RHZsm/jqJUWFOwmqXN1KqNPrc4IoGY0U=;
 b=YIpo+YLv75joHPfD10mdr0d2+trsS8XJ0498dbqkY+fe2rgbEggpQjXdcbTjNGdCPV
 r0+DU720RAB7qgxZuMe1tu65Da7vZ3QYwkZhWh7TUZQiN0WmdZLGfqFBqKWZDuAQfULn
 fWLUdaBH1qGVFEOSKO2THfp5Q8jpiHiOE1gpP6nUN3c6xUpsA3rNOMjLIw7gxBGTLhRl
 k1i5nj0QzC/EGx260KD57W/Wp5ePd+u3ccaeXDt6gIbPKktzespMO9/ZKxVVqUx1bWjz
 y/qbwRAhXSo1rBfVcP6fnftM2bSY7VpulzhEW9KMfn7L5+d6uvUTgEpI31aKv1yR4Ee+
 gR0Q==
X-Gm-Message-State: APjAAAXAZh6YvbQbv2pBXDKBttLc/w/1Z5ZwlwwbIZKNwWdLBhb9zIXC
 ctQlbb/gG5mWOi/YNPQ5LGzDlQ==
X-Google-Smtp-Source: APXvYqzfxDn97zZvFyCkLV7oKlhpV97CKxX1BAnSo1dFJ8nCTPuLAFqtJHX18yucyAKSuQarlV4aBQ==
X-Received: by 2002:a1c:e914:: with SMTP id q20mr18065618wmc.55.1559643512097; 
 Tue, 04 Jun 2019 03:18:32 -0700 (PDT)
Received: from localhost.localdomain (nat-pool-mxp-t.redhat.com.
 [149.6.153.186])
 by smtp.gmail.com with ESMTPSA id j7sm1674477wru.54.2019.06.04.03.18.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 03:18:31 -0700 (PDT)
Date: Tue, 4 Jun 2019 12:18:29 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Joe Ayers <joe@ayerscasa.com>
Message-ID: <20190604101827.GA6510@localhost.localdomain>
References: <CAJ0CqmXJj9tnN65b9MjeEtTBcYkPnQFcWXSHaPPLOP4dE=FsQg@mail.gmail.com>
 <CAALvt2Pb+is9LZzSqv5BmbH6G6A+_LxvpP16==2OsNwk5LT50w@mail.gmail.com>
 <CAJ0CqmXvn23AZy+ONQsvV-bDuLE1pr_=jcOsgcOc++hZ8jMuuw@mail.gmail.com>
 <CAALvt2MVpMh_899tPSTw96=MaZtaehXd3Of3HOEfSWuoQgDkAA@mail.gmail.com>
 <CAJ0CqmWwu-W=AaSrjhe+MNsMBpPj-pWxy0ua-jm=m85XtiEn9g@mail.gmail.com>
 <CAALvt2Pje6Vk3zPRi-o0JCHXf51Eo2YBPmjhMo7HdwQhDgeFUQ@mail.gmail.com>
 <CAJ0CqmUaeWXbFz0_0Jg0m+NGOPGm66WEGA_mHsSRb1dV3+PL_A@mail.gmail.com>
 <CAALvt2MHTuEt8Y_Uwxh6TS1M0y4AD2-iSSccNS1WTfdr1zjQ0g@mail.gmail.com>
 <20190404072034.GA4265@localhost.localdomain>
 <CAALvt2PtubH=5i_Q3afHaATm7HNK16=jH06yivf3tDdmftQ=YQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAALvt2PtubH=5i_Q3afHaATm7HNK16=jH06yivf3tDdmftQ=YQ@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031837_554434_D804B4B4 
X-CRM114-Status: GOOD (  39.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] ath9k: fix dynack in IBSS mode
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============0861950027830433308=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============0861950027830433308==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/9DWx/yDrRhgMJTb"
Content-Disposition: inline


--/9DWx/yDrRhgMJTb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Thu, Apr 4, 2019 at 12:20 AM Lorenzo Bianconi
> <lorenzo.bianconi@redhat.com> wrote:
> >
> > > On Wed, Apr 3, 2019 at 7:40 AM Lorenzo Bianconi
> > > <lorenzo.bianconi@redhat.com> wrote:
> > > >
> > > > >
> > > > > On Tue, Apr 2, 2019 at 11:45 PM Lorenzo Bianconi
> > > > > <lorenzo.bianconi@redhat.com> wrote:
> > > > > >
> > > > > > >
> > > > > > > On Sun, Mar 31, 2019 at 11:49 PM Lorenzo Bianconi
> > > > > > > <lorenzo.bianconi@redhat.com> wrote:
> > > > > > > >
> > > > > > > > >
> > > > > > > > > On Sun, Mar 31, 2019 at 12:15 PM Lorenzo Bianconi
> > > > > > > > > <lorenzo.bianconi@redhat.com> wrote:
> > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > On Sun, Mar 31, 2019 at 6:45 AM Lorenzo Bianconi
> > > > > > > > > > > <lorenzo.bianconi@redhat.com> wrote:
> > > > > > > > > > > >
> > > > > > > > > > > > >
> > > > > > > > > > > > > bump.
> > > > > > > > > > > >
> > > > > > > > > > > > Hi Joe,
> > > > > > > > > > > >
> > > > > > > > > > > > sorry for the delay
> > > > > > > > > > > >
> > > > > > > > > > > > >
> > > > > > > > > > > > > On Mon, Mar 18, 2019 at 10:59 PM Joe Ayers <joe@a=
yerscasa.com> wrote:
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> Lorenzo,  I have tested dynack on a (real distan=
ce apart) ~60km link
> > > > > > > > > > > > >> with some success.   This is the code change mad=
e:
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> --- a/drivers/net/wireless/ath/ath9k/dynack.c
> > > > > > > > > > > > >> +++ b/drivers/net/wireless/ath/ath9k/dynack.c
> > > > > > > > > > > > >> @@ -20,8 +20,9 @@
> > > > > > > > > > > > >>
> > > > > > > > > > > > >>  #define COMPUTE_TO (5 * HZ)
> > > > > > > > > > > > >>  #define LATEACK_DELAY (10 * HZ)
> > > > > > > > > > > > >> -#define LATEACK_TO 256
> > > > > > > > > > > > >> -#define MAX_DELAY 300
> > > > > > > > > > > > >> +#define LATEACK_TO 1054
> > > > > > > > > > > > >> +/* AREDN max distance set to 150km */
> > > > > > > > > > > > >> +#define MAX_DELAY 1054
> > > > > > > > > > > > >>  #define EWMA_LEVEL 96
> > > > > > > > > > > > >>  #define EWMA_DIV 128
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> @@ -293,7 +294,8 @@
> > > > > > > > > > > > >>  void ath_dynack_node_init(struct ath_hw *ah, st=
ruct ath_node *an)
> > > > > > > > > > > > >>  {
> > > > > > > > > > > > >>   /* ackto =3D slottime + sifs + air delay */
> > > > > > > > > > > > >> - u32 ackto =3D 9 + 16 + 64;
> > > > > > > > > > > > >> + /* AREDN starting point is 20km */
> > > > > > > > > > > > >> + u32 ackto =3D 9 + 16 + 171;
> > > > > > > > > > > > >>   struct ath_dynack *da =3D &ah->dynack;
> > > > > > > > > > > > >>
> > > > > > > > > > > > >>   an->ackto =3D ackto;
> > > > > > > > > > > > >> @@ -328,7 +330,8 @@
> > > > > > > > > > > > >>  void ath_dynack_reset(struct ath_hw *ah)
> > > > > > > > > > > > >>  {
> > > > > > > > > > > > >>   /* ackto =3D slottime + sifs + air delay */
> > > > > > > > > > > > >> - u32 ackto =3D 9 + 16 + 64;
> > > > > > > > > > > > >> + /* AREDN starting point is 20km */
> > > > > > > > > > > > >> + u32 ackto =3D 9 + 16 + 171;
> > > > > > > > > > > > >>   struct ath_dynack *da =3D &ah->dynack;
> > > > > > > > > > > > >>
> > > > > > > > > > > > >>   da->lto =3D jiffies;
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> Notes:
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> 1) The stations are showing ack_to between 525 u=
p to 575 A.  When
> > > > > > > > > > > > >> static set at 60k distance, the timeout is set t=
o 460 S.
> > > > > > > > > > > > >> 2) significant performance improvement between t=
hese settings with
> > > > > > > > > > > > >> iperf3 and back to back runs with reboot in the =
middle:
> > > > > > > > > > > > >>
> > > > > > > > > > > >
> > > > > > > > > > > > could you please try to attached patch? The max dis=
tance the hw can
> > > > > > > > > > > > support depends of channel width:
> > > > > > > > > > > > e.g @20MHz (HT20, 5GHz)
> > > > > > > > > > > >
> > > > > > > > > > > > max distance is ~ 61Km
> > > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > Could these max distance specs be what the manufactur=
e tested, not
> > > > > > > > > > > necessarily a hardware limitation -- just not known?
> > > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > https://github.com/torvalds/linux/blob/master/drivers/n=
et/wireless/ath/ath9k/hw.c#L1006
> > > > > > > > > >
> > > > > > > > > > max timeout you can set is AR_TIME_OUT_ACK (0x3fff) / c=
lock_rate
> > > > > > > > > >
> > > > > > > > > > > I suspect in the calculation for max_to, if the chann=
el is 10MHz, the
> > > > > > > > > > > max distance can be doubled for the hardware--do the =
specs only give
> > > > > > > > > > > 20MHz values?   This would be consistent with, for ex=
ample, the symbol
> > > > > > > > > > > lengths are doubled when cutting the bandwidth in hal=
f, hence half the
> > > > > > > > > > > rates and still 64 bins or 64 point fft squeezed in t=
he channel.  SNR
> > > > > > > > > > > is also 3dB higher given same energy in half the band=
width.  We don't
> > > > > > > > > > > see 20MHz channels working at these long distances, r=
ather use 10MHz
> > > > > > > > > > > for it to work.  Intuitively, as I understand it, mor=
e time is needed
> > > > > > > > > > > with increased distance for reflection signals to not=
 be received past
> > > > > > > > > > > the symbol time and increased inter-symbol interferen=
ce.
> > > > > > > > > >
> > > > > > > > > > yes, but it is already done in ath9k_hw_set_clockrate()
> > > > > > > > > > https://github.com/torvalds/linux/blob/master/drivers/n=
et/wireless/ath/ath9k/hw.c#L61
> > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > > @Koen: do you have any chance to test the attached =
patch in your
> > > > > > > > > > > > environment? Thx
> > > > > > > > > > > >
> > > > > > > > > > > > >> run 1 @ static 60km:
> > > > > > > > > > > > >> [  5]   0.00-10.00  sec  7.31 MBytes  6.13 Mbits=
/sec    0             sender
> > > > > > > > > > > > >> [  5]   0.00-10.08  sec  7.16 MBytes  5.95 Mbits=
/sec                  receiver
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> run 2 @ static 60km:
> > > > > > > > > > > > >> [  5]   0.00-10.00  sec  5.88 MBytes  4.93 Mbits=
/sec    0             sender
> > > > > > > > > > > > >> [  5]   0.00-10.04  sec  5.77 MBytes  4.81 Mbits=
/sec                  receiver
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> run 1 and 2 @ auto distance -- goes up to ~575us=
 with data flow,
> > > > > > > > > > > > >> floats back to ~525 otherwise:
> > > > > > > > > > > > >> [  5]   0.00-10.00  sec  20.0 MBytes  16.8 Mbits=
/sec    0             sender
> > > > > > > > > > > > >> [  5]   0.00-10.07  sec  19.8 MBytes  16.5 Mbits=
/sec                  receiver
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> [  5]   0.00-10.00  sec  21.4 MBytes  18.0 Mbits=
/sec    0             sender
> > > > > > > > > > > > >> [  5]   0.00-10.04  sec  21.2 MBytes  17.7 Mbits=
/sec                  receiver
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> 3) running wpa_supplicant and psk2
> > > > > > > > > > > > >> 4) running ibss on ch 176 with AREDN channels on=
 top of 18.06.2
> > > > > > > > > > > > >> 5) on one reboot, one of the stations stayed dow=
n at initial 196, then
> > > > > > > > > > > > >> bumped up to ~250 range and stayed there, link n=
ot functional.  Not
> > > > > > > > > > > > >> sure how to explain this value...
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> Question,  can this condition be true periodical=
ly while the link is
> > > > > > > > > > > > >> live or only at initial 802.11 adhoc link setup?:
> > > > > > > > > > > > >>
> > > > > > > > > > > > >>                 if (ieee80211_is_assoc_req(hdr->=
frame_control) ||
> > > > > > > > > > > > >>                     ieee80211_is_assoc_resp(hdr-=
>frame_control) ||
> > > > > > > > > > > > >>                     ieee80211_is_auth(hdr->frame=
_control)) {
> > > > > > > > > > > > >>
> > > > > > > > > > > >
> > > > > > > > > > > > I do not think so since AFAIK auth frames are sent =
just during ibss join
> > > > > > > > > > > >
> > > > > > > > > > > > >> 6)  Auto distance stayed at initial 196 when tur=
ning off encryption.
> > > > > > > > > > > > >>
> > > > > > > > > > > > >> Any ideas of alternative options of packets to k=
ey off in late ack
> > > > > > > > > > > > >> situation?   running wpad-mini is ~500k file siz=
e and RAM consumer.
> > > > > > > > > > > > >> It would be beneficial to take wpa_supplicant ou=
t of the equation if
> > > > > > > > > > > > >> at all possible.
> > > > > > > > > > > > >>
> > > > > > > > > > > >
> > > > > > > > > > > > What is mandatory are unicast frames during joining=
 phase, maybe you can
> > > > > > > > > > > > develop an userspace daemon for this purpose
> > > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > I see where you're going with this.   I'd have to lea=
rn a lot to do
> > > > > > > > > > > this.  Possibly a simpler approach, if it doesn't add=
 too much
> > > > > > > > > > > penalty.  What if the initial ack_to is at max, it qu=
ickly settles
> > > > > > > > > > > down to measured, then after some criteria, time or #=
 acks received,
> > > > > > > > > > > say ~15 seconds has elapsed  a cycle is triggered bac=
k to max ack_to.
> > > > > > > > > > >  This should catch new stations joining at farther di=
stances when wpad
> > > > > > > > > > > is not used.
> > > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > I am a little bit concerned about short/medium distance=
 links with high LER.
> > > > > > > > > > Is the attached patch working?
> > > > > > > > > >
> > > > > > > > > > Regards,
> > > > > > > > > > Lorenzo
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > I did not have success on the patch on 60km link @ 10MHz =
channel with
> > > > > > > > > encryption.  I need to double-check, tomorrow, to have co=
nfidence
> > > > > > > > > something wasn't overlooked.   After I turned on debug, h=
ere's what
> > > > > > > > > the log looked like, ack_to stayed too short (from memory=
) "89 A".
> > > > > > > >
> > > > > > > > Are you sure wpa_supplicant is running properly? I can't se=
e any
> > > > > > > > 'late_ack' in the log.
> > > > > > > >
> > > > > > > > Regards,
> > > > > > > > Lorenzo
> > > > > > > >
> > > > > > >
> > > > > > > OK, double checked everything and have success this time.   S=
ummary of results:
> > > > > > >
> > > > > > > * ~60km link is working with your code changes.
> > > > > > > * The max_to in 10MHz channel is determined to be 744 (we wil=
l be
> > > > > > > pushing this limit...)
> > > > > > > * I probably didn't  wait long enough before...   Would makin=
g initial
> > > > > > > ack_to =3D max_to solve wait time, if it doesn't cause issues=
 for
> > > > > > > short/medium distances?
> > > > > > >
> > > > > >
> > > > > > I do not agree, it is just a way to disable 'late ack' tracking
> > > > > >
> > > > > > > both stations booted same time, turn on debugging, all is OK =
and stable
> > > > > > > [  339.340507] ath: phy0: 44:d9:e7:c0:15:4d to 520 [522]
> > > > > > > [  339.817825] ath: phy0: rx sample 299300118 [h 36-t 37]
> > > > > > > [  339.817905] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 29929=
9549 [dur
> > > > > > > 48][h 21-t 22]
> > > > > > > [  339.817923] ath: phy0: ack_ts 299300118 st_ts 299299549 st=
_dur 48
> > > > > > > [36-21] max_to 744
> > > > > > > [  339.817959] ath: phy0: 44:d9:e7:c0:15:4d to 520 [521]
> > > > > > >
> > > > > > > remote sta rebooted at this point and  auto distance flipped =
to static
> > > > > > > back to auto here
> > > > > > > waiting for reboot...
> > > > > > > waiting even longer...
> > > > > > >
> > > > > >
> > > > > > What do you mean with 'even longer'? How long does it take to c=
onverge
> > > > > > to the correct value?
> > > > > > If the delay is 600s something will not work properly.
> > > > > > Is the link working every time with the patch I attached?
> > > > > >
> > > > > > Regards,
> > > > > > Lorenzo
> > > > > >
> > > > >
> > > > > Remote station was rebooted and last debug log of received data w=
as [
> > > > > 339.817959].
> > > > > ~30 seconds to reboot, then next debug log of received data was [=
  644.262302]
> > > > >
> > > > > The configuration is using OLSR to set routing tables.  There wou=
ld
> > > > > not be a route for unicast IP
> > > > > traffic at the timing of the 802.11n adhoc layer establishing a
> > > > > connection. Then, OLSR is udp broadcasting
> > > > > to discover a neighbor station, followed by an exchange of routing
> > > > > information.  With  ~1000 route table entries,
> > > > > it can take a ~minute to get all the route information settled do=
wn.
> > > > > The wifi interface has static IP definition.
> > > > >
> > > > > I will do more testing to determine if behavior is consistent.
> > > > >
> > > >
> > > > ack, if you confirm it works, I will post the patch
> > > >
> > >
> > > Lorenzo,  not good news.   When both nodes are booted at the same
> > > time, they sometime connect and ack_to correctly synced in the ~525
> > > range on both sides.  But there are instances where one or both sides
> > > stay at "89 A", then might jump to "2xx A" and stays there.     If
> > > they are booted and working properly, if one side is rebooted, ack_to
> > > stays at "89 A" or "2xx A"  -- at least 6 tests of this.   The same
> > > result occurs if distance is set static then back to auto on a live
> > > node.
> >
> > Hi,
> >
> > first of all thx a lot for testing :)
> > Could you please provide me the dynack log output when the system is not
> > working? (when the ack timeout does not converge, 89 A or 2xx A)
> >
> > Regards,
> > Lorenzo
> >
>=20

Hi Joe,

> Lorenzo,  I deployed an ath9k auto distance solution in April that is
> working for the AREDN community http://www.arednmesh.org .
>=20
> https://github.com/aredn/aredn_ar71xx/blob/develop/patches/712-auto-dista=
nce-settings.patch
>=20
> Summary of solution:
>=20
> * no dependency on wpa_supplicant
> * initial ack_to is set to max,  to not enter late ack conditions
> * User level trigger to flip distance setting to static and back to
> auto when new 802.11 adhoc neighbor joins. (we archive and chart SNR
> values for neighbors and natural to hook in this trigger).

Have you initialized the ackto to the max value to remove wpa_supplicant
dependency or because the system is not able to trigger the 'late ack'?
I did not get why you need to flip the algo off/on when new 802.11 adhoc
neighbor joins

Regards,
Lorenzo

>=20
> Findings:
>=20
> 1) Throughput of P2P links greatly improved, by upwards of 50% iperf
> results. ack_to value increases by ~20% under load and floats back
> down closer to physical distance value under lite load.  From prior
> tests, the throughput on a ~60km link compares directly with AirOS
> TDMA P2P, although needs confirmation.   Best Value use case.
>=20
> 2) P2MP thoughput has mixed results.  Negative influencing factor
> appears to be if there are low SNR neighbors.  The symptom is a wide
> range of ack_to values, sometimes double the ack_to value, between
> successive values from the same neighbor.  Auto Distance may or may
> not improve over static.
>=20
> 3) short distance (inside the home) ack_to values are 5km+.
> Throughput is lower than setting to a static value.  Auto distance
> does not add value.
>=20
> 4) Low SNR neighbors may not change from initial ack_to setting.
> Added code change to ignore neighbors at max ack_to when determining
> farthest distance to set ack_to.
>=20
> 5) mobile environment not yet tested, but will in time.
>=20
> Joe AE6XE
>=20
> > >
> > > > > question:
> > > > > ack_ts =3D timestamp of the received 'ack'
> > > >
> > > > yes
> > > >
> > > > > st_ts =3D timestamp sending data to the remote station?
> > > >
> > > > yes
> > > >
> > > > > st_dur =3D length of time processing beyond air time?
> > > >
> > > > frame tx time
> > > >
> > > > >
> > > > > How could ack_ts be before st_ts on many log entries?.  Not the s=
ame
> > > > > round trip pair?
> > > >
> > > >  ack timeout was too low for that frame
> > > >
> > > > Regards,
> > > > Lorenzo
> > > >
> > > > >
> > > > > > > [  644.262302] ath: phy0: rx sample 603744259 [h 0-t 1]
> > > > > > > [  644.264031] ath: phy0: rx sample 603746028 [h 0-t 2]
> > > > > > > [  644.267114] ath: phy0: rx sample 603749107 [h 0-t 3]
> > > > > > > [  644.278900] ath: phy0: rx sample 603760863 [h 0-t 4]
> > > > > > > [  644.299039] ath: phy0: rx sample 603780986 [h 0-t 5]
> > > > > > > [  644.342403] ath: phy0: rx sample 603824358 [h 0-t 6]
> > > > > > > [  644.375579] ath: phy0: rx sample 603857539 [h 0-t 7]
> > > > > > > [  644.401691] ath: phy0: rx sample 603883636 [h 0-t 8]
> > > > > > > [  644.409212] ath: phy0: rx sample 603891183 [h 0-t 9]
> > > > > > > [  645.264002] ath: phy0: rx sample 604745956 [h 0-t 10]
> > > > > > > [  645.266158] ath: phy0: rx sample 604748155 [h 0-t 11]
> > > > > > > [  645.269178] ath: phy0: rx sample 604751171 [h 0-t 12]
> > > > > > > [  645.272616] ath: phy0: rx sample 604754574 [h 0-t 13]
> > > > > > > [  645.274497] ath: phy0: rx sample 604756481 [h 0-t 14]
> > > > > > > [  645.289603] ath: phy0: rx sample 604771574 [h 0-t 15]
> > > > > > > [  645.317443] ath: phy0: rx sample 604799361 [h 0-t 16]
> > > > > > > [  645.342753] ath: phy0: rx sample 604824675 [h 0-t 17]
> > > > > > > [  645.380092] ath: phy0: rx sample 604862005 [h 0-t 18]
> > > > > > > [  645.382277] ath: phy0: rx sample 604864222 [h 0-t 19]
> > > > > > > [  646.361902] ath: phy0: rx sample 605843815 [h 0-t 20]
> > > > > > > [  646.379173] ath: phy0: rx sample 605861106 [h 0-t 21]
> > > > > > > [  647.267357] ath: phy0: rx sample 606749284 [h 0-t 22]
> > > > > > > [  647.270280] ath: phy0: rx sample 606752217 [h 0-t 23]
> > > > > > > [  647.271846] ath: phy0: rx sample 606753815 [h 0-t 24]
> > > > > > > [  647.281800] ath: phy0: rx sample 606763721 [h 0-t 25]
> > > > > > > [  647.295926] ath: phy0: rx sample 606777865 [h 0-t 26]
> > > > > > > [  647.306798] ath: phy0: rx sample 606788726 [h 0-t 27]
> > > > > > > [  647.328574] ath: phy0: rx sample 606810510 [h 0-t 28]
> > > > > > > [  647.341512] ath: phy0: rx sample 606823450 [h 0-t 29]
> > > > > > > [  647.359945] ath: phy0: rx sample 606841877 [h 0-t 30]
> > > > > > > [  648.268526] ath: phy0: rx sample 607750431 [h 0-t 31]
> > > > > > > [  648.270315] ath: phy0: rx sample 607752248 [h 0-t 32]
> > > > > > > [  648.273354] ath: phy0: rx sample 607755322 [h 0-t 33]
> > > > > > > [  648.276563] ath: phy0: rx sample 607758531 [h 0-t 34]
> > > > > > > [  648.298305] ath: phy0: rx sample 607780232 [h 0-t 35]
> > > > > > > [  648.333118] ath: phy0: rx sample 607815048 [h 0-t 36]
> > > > > > > [  648.360147] ath: phy0: rx sample 607842085 [h 0-t 37]
> > > > > > > [  648.368375] ath: phy0: rx sample 607850318 [h 0-t 38]
> > > > > > > [  648.383082] ath: phy0: rx sample 607865002 [h 0-t 39]
> > > > > > > [  658.403020] ath: phy0: rx sample 617884931 [h 0-t 40]
> > > > > > > [  658.403811] ath: phy0: rx sample 617885784 [h 0-t 41]
> > > > > > > [  658.404643] ath: phy0: rx sample 617886788 [h 0-t 42]
> > > > > > > [  658.407379] ath: phy0: rx sample 617889332 [h 0-t 43]
> > > > > > > [  658.419606] ath: phy0: rx sample 617901545 [h 0-t 44]
> > > > > > > [  658.421322] ath: phy0: rx sample 617903258 [h 0-t 45]
> > > > > > > [  658.466056] ath: phy0: rx sample 617947993 [h 0-t 46]
> > > > > > > [  658.494433] ath: phy0: rx sample 617976380 [h 0-t 47]
> > > > > > > [  658.497675] ath: phy0: rx sample 617979642 [h 0-t 48]
> > > > > > > [  658.520552] ath: phy0: late ack
> > > > > > > [  658.521240] ath: phy0: rx sample 618003158 [h 0-t 49]
> > > > > > > [  658.524545] ath: phy0: rx sample 618006759 [h 0-t 50]
> > > > > > > [  658.524589] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 61800=
5837 [dur
> > > > > > > 232][h 0-t 1]
> > > > > > > [  658.524607] ath: phy0: ack_ts 603744259 st_ts 618005837 st=
_dur 232
> > > > > > > [0-0] max_to 744
> > > > > > > [  658.524624] ath: phy0: ack_ts 603746028 st_ts 618005837 st=
_dur 232
> > > > > > > [1-0] max_to 744
> > > > > > > [  658.524640] ath: phy0: ack_ts 603749107 st_ts 618005837 st=
_dur 232
> > > > > > > [2-0] max_to 744
> > > > > > > [  658.524657] ath: phy0: ack_ts 603760863 st_ts 618005837 st=
_dur 232
> > > > > > > [3-0] max_to 744
> > > > > > > [  658.524674] ath: phy0: ack_ts 603780986 st_ts 618005837 st=
_dur 232
> > > > > > > [4-0] max_to 744
> > > > > > > [  658.524690] ath: phy0: ack_ts 603824358 st_ts 618005837 st=
_dur 232
> > > > > > > [5-0] max_to 744
> > > > > > > [  658.524707] ath: phy0: ack_ts 603857539 st_ts 618005837 st=
_dur 232
> > > > > > > [6-0] max_to 744
> > > > > > > [  658.524724] ath: phy0: ack_ts 603883636 st_ts 618005837 st=
_dur 232
> > > > > > > [7-0] max_to 744
> > > > > > > [  658.524741] ath: phy0: ack_ts 603891183 st_ts 618005837 st=
_dur 232
> > > > > > > [8-0] max_to 744
> > > > > > > [  658.524757] ath: phy0: ack_ts 604745956 st_ts 618005837 st=
_dur 232
> > > > > > > [9-0] max_to 744
> > > > > > > [  658.524774] ath: phy0: ack_ts 604748155 st_ts 618005837 st=
_dur 232
> > > > > > > [10-0] max_to 744
> > > > > > > [  658.524791] ath: phy0: ack_ts 604751171 st_ts 618005837 st=
_dur 232
> > > > > > > [11-0] max_to 744
> > > > > > > [  658.524808] ath: phy0: ack_ts 604754574 st_ts 618005837 st=
_dur 232
> > > > > > > [12-0] max_to 744
> > > > > > > [  658.524825] ath: phy0: ack_ts 604756481 st_ts 618005837 st=
_dur 232
> > > > > > > [13-0] max_to 744
> > > > > > > [  658.524841] ath: phy0: ack_ts 604771574 st_ts 618005837 st=
_dur 232
> > > > > > > [14-0] max_to 744
> > > > > > > [  658.524858] ath: phy0: ack_ts 604799361 st_ts 618005837 st=
_dur 232
> > > > > > > [15-0] max_to 744
> > > > > > > [  658.524875] ath: phy0: ack_ts 604824675 st_ts 618005837 st=
_dur 232
> > > > > > > [16-0] max_to 744
> > > > > > > [  658.524892] ath: phy0: ack_ts 604862005 st_ts 618005837 st=
_dur 232
> > > > > > > [17-0] max_to 744
> > > > > > > [  658.524908] ath: phy0: ack_ts 604864222 st_ts 618005837 st=
_dur 232
> > > > > > > [18-0] max_to 744
> > > > > > > [  658.524925] ath: phy0: ack_ts 605843815 st_ts 618005837 st=
_dur 232
> > > > > > > [19-0] max_to 744
> > > > > > > [  658.524942] ath: phy0: ack_ts 605861106 st_ts 618005837 st=
_dur 232
> > > > > > > [20-0] max_to 744
> > > > > > > [  658.524959] ath: phy0: ack_ts 606749284 st_ts 618005837 st=
_dur 232
> > > > > > > [21-0] max_to 744
> > > > > > > [  658.524975] ath: phy0: ack_ts 606752217 st_ts 618005837 st=
_dur 232
> > > > > > > [22-0] max_to 744
> > > > > > > [  658.524992] ath: phy0: ack_ts 606753815 st_ts 618005837 st=
_dur 232
> > > > > > > [23-0] max_to 744
> > > > > > > [  658.525009] ath: phy0: ack_ts 606763721 st_ts 618005837 st=
_dur 232
> > > > > > > [24-0] max_to 744
> > > > > > > [  658.525026] ath: phy0: ack_ts 606777865 st_ts 618005837 st=
_dur 232
> > > > > > > [25-0] max_to 744
> > > > > > > [  658.525042] ath: phy0: ack_ts 606788726 st_ts 618005837 st=
_dur 232
> > > > > > > [26-0] max_to 744
> > > > > > > [  658.525059] ath: phy0: ack_ts 606810510 st_ts 618005837 st=
_dur 232
> > > > > > > [27-0] max_to 744
> > > > > > > [  658.525076] ath: phy0: ack_ts 606823450 st_ts 618005837 st=
_dur 232
> > > > > > > [28-0] max_to 744
> > > > > > > [  658.525093] ath: phy0: ack_ts 606841877 st_ts 618005837 st=
_dur 232
> > > > > > > [29-0] max_to 744
> > > > > > > [  658.525110] ath: phy0: ack_ts 607750431 st_ts 618005837 st=
_dur 232
> > > > > > > [30-0] max_to 744
> > > > > > > [  658.525126] ath: phy0: ack_ts 607752248 st_ts 618005837 st=
_dur 232
> > > > > > > [31-0] max_to 744
> > > > > > > [  658.525143] ath: phy0: ack_ts 607755322 st_ts 618005837 st=
_dur 232
> > > > > > > [32-0] max_to 744
> > > > > > > [  658.525160] ath: phy0: ack_ts 607758531 st_ts 618005837 st=
_dur 232
> > > > > > > [33-0] max_to 744
> > > > > > > [  658.525177] ath: phy0: ack_ts 607780232 st_ts 618005837 st=
_dur 232
> > > > > > > [34-0] max_to 744
> > > > > > > [  658.525194] ath: phy0: ack_ts 607815048 st_ts 618005837 st=
_dur 232
> > > > > > > [35-0] max_to 744
> > > > > > > [  658.525210] ath: phy0: ack_ts 607842085 st_ts 618005837 st=
_dur 232
> > > > > > > [36-0] max_to 744
> > > > > > > [  658.525227] ath: phy0: ack_ts 607850318 st_ts 618005837 st=
_dur 232
> > > > > > > [37-0] max_to 744
> > > > > > > [  658.525244] ath: phy0: ack_ts 607865002 st_ts 618005837 st=
_dur 232
> > > > > > > [38-0] max_to 744
> > > > > > > [  658.525260] ath: phy0: ack_ts 617884931 st_ts 618005837 st=
_dur 232
> > > > > > > [39-0] max_to 744
> > > > > > > [  658.525277] ath: phy0: ack_ts 617885784 st_ts 618005837 st=
_dur 232
> > > > > > > [40-0] max_to 744
> > > > > > > [  658.525294] ath: phy0: ack_ts 617886788 st_ts 618005837 st=
_dur 232
> > > > > > > [41-0] max_to 744
> > > > > > > [  658.525311] ath: phy0: ack_ts 617889332 st_ts 618005837 st=
_dur 232
> > > > > > > [42-0] max_to 744
> > > > > > > [  658.525328] ath: phy0: ack_ts 617901545 st_ts 618005837 st=
_dur 232
> > > > > > > [43-0] max_to 744
> > > > > > > [  658.525344] ath: phy0: ack_ts 617903258 st_ts 618005837 st=
_dur 232
> > > > > > > [44-0] max_to 744
> > > > > > > [  658.525361] ath: phy0: ack_ts 617947993 st_ts 618005837 st=
_dur 232
> > > > > > > [45-0] max_to 744
> > > > > > > [  658.525378] ath: phy0: ack_ts 617976380 st_ts 618005837 st=
_dur 232
> > > > > > > [46-0] max_to 744
> > > > > > > [  658.525394] ath: phy0: ack_ts 617979642 st_ts 618005837 st=
_dur 232
> > > > > > > [47-0] max_to 744
> > > > > > > [  658.525411] ath: phy0: ack_ts 618003158 st_ts 618005837 st=
_dur 232
> > > > > > > [48-0] max_to 744
> > > > > > > [  658.525428] ath: phy0: ack_ts 618006759 st_ts 618005837 st=
_dur 232
> > > > > > > [49-0] max_to 744
> > > > > > > [  658.525441] ath: phy0: 44:d9:e7:c0:15:4d to 690 [690]
> > > > > > > [  658.535536] ath: phy0: rx sample 618017698 [h 50-t 51]
> > > > > > > [  658.535619] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 61801=
6720 [dur
> > > > > > > 256][h 1-t 2]
> > > > > > > [  658.535636] ath: phy0: ack_ts 618017698 st_ts 618016720 st=
_dur 256
> > > > > > > [50-1] max_to 744
> > > > > > > [  658.535649] ath: phy0: 44:d9:e7:c0:15:4d to 698 [722]
> > > > > > > [  658.542894] ath: phy0: rx sample 618025043 [h 51-t 52]
> > > > > > > [  658.542985] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 61802=
3968 [dur
> > > > > > > 304][h 2-t 3]
> > > > > > > [  658.543002] ath: phy0: ack_ts 618025043 st_ts 618023968 st=
_dur 304
> > > > > > > [51-2] max_to 744
> > > > > > > [  658.548405] ath: phy0: rx sample 618030575 [h 51-t 53]
> > > > > > > [  658.548479] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 61802=
9652 [dur
> > > > > > > 232][h 3-t 4]
> > > > > > > [  658.548496] ath: phy0: ack_ts 618025043 st_ts 618029652 st=
_dur 232
> > > > > > > [51-3] max_to 744
> > > > > > > [  658.548513] ath: phy0: ack_ts 618030575 st_ts 618029652 st=
_dur 232
> > > > > > > [52-3] max_to 744
> > > > > > > [  658.548527] ath: phy0: 44:d9:e7:c0:15:4d to 696 [691]
> > > > > > > [  675.473873] ath: phy0: rx sample 634956047 [h 53-t 54]
> > > > > > > [  675.473948] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63495=
5445 [dur
> > > > > > > 56][h 4-t 5]
> > > > > > > [  675.473966] ath: phy0: ack_ts 634956047 st_ts 634955445 st=
_dur 56
> > > > > > > [53-4] max_to 744
> > > > > > > [  675.473979] ath: phy0: 44:d9:e7:c0:15:4d to 658 [546]
> > > > > > > [  675.473990] ath: phy0: ACK timeout 658 slottime 327
> > > > > > > [  675.479661] ath: phy0: rx sample 634961869 [h 54-t 55]
> > > > > > > [  675.479712] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63496=
1211 [dur
> > > > > > > 96][h 5-t 6]
> > > > > > > [  675.479729] ath: phy0: ack_ts 634961869 st_ts 634961211 st=
_dur 96
> > > > > > > [54-5] max_to 744
> > > > > > > [  675.479742] ath: phy0: 44:d9:e7:c0:15:4d to 634 [562]
> > > > > > > [  675.491078] ath: phy0: rx sample 634973253 [h 55-t 56]
> > > > > > > [  675.491155] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63497=
2643 [dur
> > > > > > > 64][h 6-t 7]
> > > > > > > [  675.491173] ath: phy0: ack_ts 634973253 st_ts 634972643 st=
_dur 64
> > > > > > > [55-6] max_to 744
> > > > > > > [  675.491186] ath: phy0: 44:d9:e7:c0:15:4d to 612 [546]
> > > > > > > [  675.528756] ath: phy0: rx sample 635010935 [h 56-t 57]
> > > > > > > [  675.528818] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63500=
9773 [dur
> > > > > > > 320][h 7-t 8]
> > > > > > > [  675.528836] ath: phy0: ack_ts 635010935 st_ts 635009773 st=
_dur 320
> > > > > > > [56-7] max_to 744
> > > > > > > [  675.937714] ath: phy0: rx sample 635419888 [h 56-t 58]
> > > > > > > [  675.937790] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63541=
9319 [dur
> > > > > > > 48][h 8-t 9]
> > > > > > > [  675.937807] ath: phy0: ack_ts 635010935 st_ts 635419319 st=
_dur 48
> > > > > > > [56-8] max_to 744
> > > > > > > [  675.937824] ath: phy0: ack_ts 635419888 st_ts 635419319 st=
_dur 48
> > > > > > > [57-8] max_to 744
> > > > > > > [  675.937838] ath: phy0: 44:d9:e7:c0:15:4d to 589 [521]
> > > > > > > [  675.940082] ath: phy0: rx sample 635422211 [h 58-t 59]
> > > > > > > [  675.940152] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63542=
1555 [dur
> > > > > > > 96][h 9-t 10]
> > > > > > > [  675.940169] ath: phy0: ack_ts 635422211 st_ts 635421555 st=
_dur 96
> > > > > > > [58-9] max_to 744
> > > > > > > [  675.940182] ath: phy0: 44:d9:e7:c0:15:4d to 581 [560]
> > > > > > > [  676.324497] ath: phy0: rx sample 635806674 [h 59-t 60]
> > > > > > > [  676.324575] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63580=
6105 [dur
> > > > > > > 48][h 10-t 11]
> > > > > > > [  676.324593] ath: phy0: ack_ts 635806674 st_ts 635806105 st=
_dur 48
> > > > > > > [59-10] max_to 744
> > > > > > > [  676.324606] ath: phy0: 44:d9:e7:c0:15:4d to 566 [521]
> > > > > > > [  676.788108] ath: phy0: rx sample 636270284 [h 60-t 61]
> > > > > > > [  676.788185] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63626=
9715 [dur
> > > > > > > 48][h 11-t 12]
> > > > > > > [  676.788203] ath: phy0: ack_ts 636270284 st_ts 636269715 st=
_dur 48
> > > > > > > [60-11] max_to 744
> > > > > > > [  676.788217] ath: phy0: 44:d9:e7:c0:15:4d to 554 [521]
> > > > > > > [  676.845108] ath: phy0: rx sample 636327291 [h 61-t 62]
> > > > > > > [  676.845179] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63632=
6720 [dur
> > > > > > > 48][h 12-t 13]
> > > > > > > [  676.845197] ath: phy0: ack_ts 636327291 st_ts 636326720 st=
_dur 48
> > > > > > > [61-12] max_to 744
> > > > > > > [  676.845211] ath: phy0: 44:d9:e7:c0:15:4d to 546 [523]
> > > > > > > [  677.266082] ath: phy0: rx sample 636748260 [h 62-t 63]
> > > > > > > [  677.266181] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63674=
7689 [dur
> > > > > > > 48][h 13-t 14]
> > > > > > > [  677.266199] ath: phy0: ack_ts 636748260 st_ts 636747689 st=
_dur 48
> > > > > > > [62-13] max_to 744
> > > > > > > [  677.266212] ath: phy0: 44:d9:e7:c0:15:4d to 540 [523]
> > > > > > > [  678.517030] ath: phy0: rx sample 637999206 [h 63-t 0]
> > > > > > > [  678.517103] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63799=
8637 [dur
> > > > > > > 48][h 14-t 15]
> > > > > > > [  678.517120] ath: phy0: ack_ts 637999206 st_ts 637998637 st=
_dur 48
> > > > > > > [63-14] max_to 744
> > > > > > > [  678.517134] ath: phy0: 44:d9:e7:c0:15:4d to 535 [521]
> > > > > > > [  679.538900] ath: phy0: rx sample 639021067 [h 0-t 1]
> > > > > > > [  679.538984] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63902=
0497 [dur
> > > > > > > 48][h 15-t 16]
> > > > > > > [  679.539001] ath: phy0: ack_ts 639021067 st_ts 639020497 st=
_dur 48
> > > > > > > [0-15] max_to 744
> > > > > > > [  679.539014] ath: phy0: 44:d9:e7:c0:15:4d to 531 [522]
> > > > > > > [  679.864056] ath: phy0: rx sample 639346215 [h 1-t 2]
> > > > > > > [  679.864135] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63934=
5557 [dur
> > > > > > > 96][h 16-t 17]
> > > > > > > [  679.864153] ath: phy0: ack_ts 639346215 st_ts 639345557 st=
_dur 96
> > > > > > > [1-16] max_to 744
> > > > > > > [  679.864200] ath: phy0: 44:d9:e7:c0:15:4d to 538 [562]
> > > > > > > [  679.877200] ath: phy0: rx sample 639359366 [h 2-t 3]
> > > > > > > [  679.877277] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63935=
8795 [dur
> > > > > > > 48][h 17-t 18]
> > > > > > > [  679.877295] ath: phy0: ack_ts 639359366 st_ts 639358795 st=
_dur 48
> > > > > > > [2-17] max_to 744
> > > > > > > [  679.877308] ath: phy0: 44:d9:e7:c0:15:4d to 534 [523]
> > > > > > > [  679.880201] ath: phy0: rx sample 639362344 [h 3-t 4]
> > > > > > > [  679.880279] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63936=
1686 [dur
> > > > > > > 96][h 18-t 19]
> > > > > > > [  679.880296] ath: phy0: ack_ts 639362344 st_ts 639361686 st=
_dur 96
> > > > > > > [3-18] max_to 744
> > > > > > > [  679.880309] ath: phy0: 44:d9:e7:c0:15:4d to 541 [562]
> > > > > > > [  680.510777] ath: phy0: rx sample 639992947 [h 4-t 5]
> > > > > > > [  680.510853] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 63999=
2377 [dur
> > > > > > > 48][h 19-t 20]
> > > > > > > [  680.510870] ath: phy0: ack_ts 639992947 st_ts 639992377 st=
_dur 48
> > > > > > > [4-19] max_to 744
> > > > > > > [  680.510883] ath: phy0: 44:d9:e7:c0:15:4d to 536 [522]
> > > > > > > [  680.510894] ath: phy0: ACK timeout 536 slottime 266
> > > > > > > [  680.510883] ath: phy0: 44:d9:e7:c0:15:4d to 536 [522]
> > > > > > > [  680.510894] ath: phy0: ACK timeout 536 slottime 266
> > > > > > > [  680.848227] ath: phy0: rx sample 640330408 [h 5-t 6]
> > > > > > > [  680.848308] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 64032=
9837 [dur
> > > > > > > 48][h 20-t 21]
> > > > > > > [  680.848326] ath: phy0: ack_ts 640330408 st_ts 640329837 st=
_dur 48
> > > > > > > [5-20] max_to 744
> > > > > > > [  680.848339] ath: phy0: 44:d9:e7:c0:15:4d to 532 [523]
> > > > > > > [  681.455324] ath: phy0: rx sample 640937504 [h 6-t 7]
> > > > > > > [  681.455401] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 64093=
6934 [dur
> > > > > > > 48][h 21-t 22]
> > > > > > > [  681.455418] ath: phy0: ack_ts 640937504 st_ts 640936934 st=
_dur 48
> > > > > > > [6-21] max_to 744
> > > > > > > [  681.455432] ath: phy0: 44:d9:e7:c0:15:4d to 529 [522]
> > > > > > > [  681.654238] ath: phy0: rx sample 641136419 [h 7-t 8]
> > > > > > > [  681.654313] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 64113=
5817 [dur
> > > > > > > 64][h 22-t 23]
> > > > > > > [  681.654331] ath: phy0: ack_ts 641136419 st_ts 641135817 st=
_dur 64
> > > > > > > [7-22] max_to 744
> > > > > > > [  681.654344] ath: phy0: 44:d9:e7:c0:15:4d to 531 [538]
> > > > > > > [  682.170862] ath: phy0: rx sample 641653035 [h 8-t 9]
> > > > > > > [  682.170944] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 64165=
2465 [dur
> > > > > > > 48][h 23-t 24]
> > > > > > > [  682.170962] ath: phy0: ack_ts 641653035 st_ts 641652465 st=
_dur 48
> > > > > > > [8-23] max_to 744
> > > > > > > [  682.170975] ath: phy0: 44:d9:e7:c0:15:4d to 528 [522]
> > > > > > > [  682.225275] ath: phy0: rx sample 641707445 [h 9-t 10]
> > > > > > > [  682.225355] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 64170=
6876 [dur
> > > > > > > 48][h 24-t 25]
> > > > > > > [  682.225373] ath: phy0: ack_ts 641707445 st_ts 641706876 st=
_dur 48
> > > > > > > [9-24] max_to 744
> > > > > > > [  682.225386] ath: phy0: 44:d9:e7:c0:15:4d to 526 [521]
> > > > > > > [  682.609319] ath: phy0: rx sample 642091496 [h 10-t 11]
> > > > > > > [  682.609397] ath: phy0: {44:d9:e7:c0:15:4d} tx sample 64209=
0926 [dur
> > > > > > > 48][h 25-t 26]
> > > > > > > [  682.609415] ath: phy0: ack_ts 642091496 st_ts 642090926 st=
_dur 48
> > > > > > > [10-25] max_to 744
> > > > > > > [  682.609428] ath: phy0: 44:d9:e7:c0:15:4d to 525 [522]
> > > > > > > ...
> > > > > > >
> > > > > > > Joe AE6XE

--/9DWx/yDrRhgMJTb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCXPZFcAAKCRA6cBh0uS2t
rCbRAP9MbUW1+RpeMW/0R29IO9DxWHnIB82qq9Qkb5WPw9sP3wEA3o3HAD+0yoCE
x/WhCz9fOcNX6EqG41FiS7HcfWkPWgo=
=1RWU
-----END PGP SIGNATURE-----

--/9DWx/yDrRhgMJTb--


--===============0861950027830433308==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0861950027830433308==--

