Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DAF1409A7
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 13:22:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HvHzx+pXVPridoJghHP0OjwGoF5GmajJTPjENt55XI8=; b=aexGEBFiXxQi09lNwlwgBH4Ti
	nEgZUB4nlhyci8UCUwW7LTuB4tTLnO57aBB4UKV/oiyASjE4IEpAro7ooDdaNU+l3mMoqGAEEeJDj
	jGJMuORmDGyiTjR31WfYlgOnMs/P2EfzC6sVthRQlm8+vnTR9fWC6ulwykcUBlzY+ALzmk2jMGZVE
	y1g+Gkdk3BeP/D+dN11eNhMhTqZukfHTonzaGzva7xMVE74AKiOHMAscOqsm1VIi5/iXU3swSZwV8
	N5D7/455YsVuwPs6x5gOUXdRYLwX8XtYNaLge31dc0TzeMniONgrg04EgnOKVvMFGSdM4HUrBQzU3
	beWE+KgkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQde-00069V-1z; Fri, 17 Jan 2020 12:22:10 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQdQ-00068n-W9
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 12:22:00 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MGz5h-1ioHls2z5P-00E8cN; Fri, 17
 Jan 2020 13:21:51 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Filip Moc'" <lede@moc6.cz>
References: <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
 <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
 <007b01d56d7f$a787b2a0$f69717e0$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171958450.1301929@mStation.localdomain>
 <045d01d5c427$81c41e60$854c5b20$@adrianschmutzler.de>
 <20200116083048.GA27998@moc6.cz>
 <00ef01d5cc5f$b9850680$2c8f1380$@adrianschmutzler.de>
 <20200116212722.GA13139@moc6.cz>
In-Reply-To: <20200116212722.GA13139@moc6.cz>
Date: Fri, 17 Jan 2020 13:21:51 +0100
Message-ID: <008401d5cd30$b2b0e780$1812b680$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIwrDRy3MIA8HqanopXQ1lmkXUGTwI1HMvlATP7hlkCCVzQLAHVIEVpAePFrTkCAw/zxwIPRxBGAh2VPKYB3iPiNgKrM8BEppnik8A=
X-Provags-ID: V03:K1:jcv59ihSH/lq50SVj/HpaR0mDZ1OCECmJrx/W2T8pQAE9Ollcml
 nUlur1p+T0rIxih8vT4m5Hkq3P4lEFXd3fXVbsLhVJtjEUXayiJxOWtQ0/QinRaF9uKSO0f
 eNwiMSmyOh965hjrumNQqKUxB3tG2esziICes/5NOSfDMZO4itH55z04YI+r9CaKJngMcq3
 +lE7QUHlMQ41g5hBhrzfA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6xtH30/w+7M=:sZttHpcqh+SqOjDszetN1n
 QRu/xTalecNDuBo/AxN0cvAmvK1VS1LAIHjc0OqdIfsEAO1lzzvQg2PjKahSiy3xL1Q5X9wS6
 LbkN2Lg5k9aPSXdc0xRzQtCOqk1ooPT5IcR71AShAnt1bdNGIISrRR2u44I7w1pEvuh8qBz25
 iAIQthYlRvMkXZhILLBU7FEfC4ldZiint2saUI5h+XMIluCrsLs84RUB7GVd49gFFMYUKDI1e
 8dPkbnhaXqdfyxnZxXsiLCC2ZWelPmi+Ho0YQCGRbqefSzKAk9UazDX8Erzk4YAFbJoIm4j0n
 q33TolooSFeuoo/vb8GI0+hiyqdRFZj1AULCms0Wi5fne0w1kSrr+NofzvfaLxkmDKQgbz5vs
 GJoELI4ZkXNpERY0NmumP6WsYWT0OJbliHLs5WdJx7msls8ySuTIM9xiUwmruxVerYFNVG+Ld
 yWbYU4thuv2mPBtp5ji02+KBBLfUH19CL3f+MOK73IH3e4dgPBALlpbZ50+jOIPqQ1HV5UxT+
 hEEzwnN1SQ08BdOsxn+IOgq7YQUEew++vuzbTYu5LZSgHjgiOIttCQUqS5CHM0rJ+bJschS3v
 Sv46EQW6+U/dX2ZxcYG9IABNY2YLGQzHrfqmYgfMCHVga/4QHeq+vy4UdKLRGz64vnpfCv1Dr
 h2y5fd3g/ej4cQZQa6oGGx/2VBg5kwG4Rsozdl1lF57chQX4fpSySj5qF3AkgSrUZ92CApd4L
 1VcwHfBwNTNlkfPVFb9VnB2xqGQ3ZM7v9zEmSy51wSG0XXhToqeKnN6HJrlJBwTYbMwzQHcpE
 k2/1rgTMMdHxd4ZM7WJqpu1sqKwvfcA2hDbFR6M/DWA9moDRaWbLmjqDj+/aK7KoR16/rqsTO
 Tc5OVW7ZQvZU0U+daXy0DMNItjUyB6ZH+iCbEAxB8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_042157_333523_A5A574CA 
X-CRM114-Status: GOOD (  41.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: openwrt-devel@lists.openwrt.org, 'Enrico Mioso' <mrkiko.rs@gmail.com>
Content-Type: multipart/mixed; boundary="===============0240081099761526633=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0240081099761526633==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=hwc+ZxfiliMb0H=-="

This is a multipart message in MIME format.

--=-=hwc+ZxfiliMb0H=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've just sent an updated patch ("v4") to the list.

Some comments below.

> -----Original Message-----
> From: Filip Moc [mailto:lede@moc6.cz]
> Sent: Donnerstag, 16. Januar 2020 22:27
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: 'Enrico Mioso' <mrkiko.rs@gmail.com>; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR=
6400
>=20
> Hi,
>=20
> > Would you provide a proper Tested-by?
> Sure, you can add "Tested-by: Filip Moc <lede@moc6.cz>" line as needed.
>=20
> > We will definitely have to use ucidef_set_led_switch here. Are you sure=
 about
> the port mask?
> Yes I checked.
> 0x2 =3D LAN1, 0x4 =3D LAN3, 0x8 =3D LAN2   so   0x2 | 0x4 | 0x8 =3D 0xE
>=20
> > What about the port order? Can you please verify the assignment of exte=
rnal
> port number vs. internal ports (just stupidly connect a cable and check w=
ith
> swconfig which port it is attached to)?
> Matches ordering above.
> switch0 Port 0 =3D SoC
> switch0 Port 1 =3D External LAN1
> switch0 Port 2 =3D External LAN3
> switch0 Port 3 =3D External LAN2
> switch0 Port 4 =3D always down

Okay, so my current reassignment for LuCi is correct.

>=20
> > Can you provide a detailed explanation of what you observe (what do you=
 use
> for visualization of "link status detection")?
> Simply type "ip link show dev eth0". When there is a link on any port of =
switch
> it should be UP with carrier (not saying "NO-CARRIER"). When there is no =
link
> on any external switch port it should say "NO-CARRIER".
> This works fine on ar71xx. On ath79 it never says "NO-CARRIER" on eth0 ev=
en
> when there's no cable connected to switch at all.
> Another way to check for carrier is "cat /sys/class/net/eth0/carrier".
> This is always 1 on ath79.
>=20
> This causes some problems such as LED not showing link status with netdev
> trigger and device won't behave optimally in many obvious network situati=
ons.
> And of course also breaks user scripts relying on eth0 link detection.
>=20
> Also when you're remotely troubleshooting some network issues one of first
> things you do after you ssh to the device is usually typing "ip a". It ca=
n save
> you a lot of time when you see NO-CARRIER on eth0 when it shouldn't be th=
ere.
> This way it's confusingly telling the opposite.

I understand. I added a corresponding remark to known issues. However, I do=
 not consider this a blocker for merging.
This would be something where 981213 could enlighten us, but I think he is =
short on time at the moment.

>=20
> > Do you refer to something specific in the boot process when you say
> "unreliable boot", or is this just backed up by the observation of the no=
n-working
> LTE module? At the moment, this sounds to me like we could just put it in
> "Known issues". Can you provide a short piece of text for that (to be put=
 in the
> commit message)?
> Sometimes after boot LTE module is not working (not visible as USB device=
 at all).
> Relevant lines in dmesg:
> [    5.662821] usb 1-1: new high-speed USB device number 2 using ehci-pla=
tform
> [   10.884716] usb 1-1: device descriptor read/64, error -145
> [   16.244841] usb 1-1: device descriptor read/64, error -71
> [   16.574819] usb 1-1: new high-speed USB device number 3 using ehci-pla=
tform
> [   21.799081] usb 1-1: device descriptor read/64, error -145
> [   27.174820] usb 1-1: device descriptor read/64, error -71
> [   27.294901] usb usb1-port1: attempt power cycle
> [   28.116145] usb 1-1: new high-speed USB device number 4 using ehci-pla=
tform
> [   33.574719] usb 1-1: device not accepting address 4, error -71
> [   33.724710] usb 1-1: new high-speed USB device number 5 using ehci-pla=
tform
> [   39.174715] usb 1-1: device not accepting address 5, error -71
> [   39.180824] usb usb1-port1: unable to enumerate USB device
>=20
> Possible workaround is to check whether LTE module is available after boo=
t.
> E.g. interface usb0 is present, 'adb devices' shows the device, relevant
> symlinks are present in /sys/bus/usb/devices/.
> When LTE module is not available power-cycle it. E.g by running this comm=
and:
> (cd /sys/class/gpio/tp-link\:power\:lte/ && echo 0 > value && sleep 1 && =
echo 1
> > value)

Same as above: I'm in favor of burying this as known issue for now. I'm not=
 sure yet whether we should include the workaround in the commit message or=
 whether this is too "trivial" ;-).

>=20
> > Are there bug report/discussions to link?
> Enrico mentioned it earlier in this thread and also reported it to me few=
 years
> ago (on ar71xx). He also did some research on why it does work on stock
> firmware. Though he didn't seem to find any obvious workaround used by st=
ock
> firmware. Maybe Enrico could post his findings here.
> I don't recall anyone else who reported this but I doubt there won't be a=
nyone
> else affected.
> Since I have this problem only on ath79 and Enrico has this problem also =
on
> ar71xx it is also possible that there are in fact two different problems.
>=20
> > And does the device have a MAC address printed on it? I would assume the
> one from WiFi?
> wlan0 has exact match with mac address printed on the label.
> eth0 is -1 and eth1 is +1 relative to wlan0.

Thanks, I added label-mac-device to the DTS accordingly.

Best

Adrian

>=20
>=20
> Filip
>=20
>=20
> On Thu, Jan 16, 2020 at 12:25:58PM +0100, Adrian Schmutzler wrote:
> > Hi,
> >
> > thanks for your feedback.
> >
> > I currently consider merging this (considering your reply on my questio=
ns
> below) and would include the few minor remaining issues as "Known issues"=
 in
> the commit message.
> >
> > Would you provide a proper Tested-by?
> >
> > > -----Original Message-----
> > > From: Filip Moc [mailto:lede@moc6.cz]
> > > Sent: Donnerstag, 16. Januar 2020 09:31
> > > To: mail@adrianschmutzler.de
> > > Cc: 'Enrico Mioso' <mrkiko.rs@gmail.com>; openwrt-devel@lists.openwrt=
.org
> > > Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link T=
L-
> MR6400
> > >
> > > Hi Adrian,
> > >
> > > thanks a lot for patch.
> > >
> > > I tested it on current trunk (bda6b6144d) and I can confirm that:
> > > 1. Works as expected, LTE can be turned off/on and value works as exp=
ected
> > > (0=3Doff,1=3Don).
> > > 2. Works as expected. LTE module's httpd is started after boot and LTE
> module's
> > > web interface is available.
> > > 3. Seems to be working just fine. eth0 is still connected to switch (=
ports LAN1
> to
> > > LAN3) while eth1 is connected to LAN4/WAN.
> >
> > What about the port order? Can you please verify the assignment of exte=
rnal
> port number vs. internal ports (just stupidly connect a cable and check w=
ith
> swconfig which port it is attached to)?
> >
> > > 4. Interfaces are working just fine. Except for obvious problem with =
eth0
> which
> > > has no link status detection.
> >
> > Can you provide a detailed explanation of what you observe (what do you=
 use
> for visualization of "link status detection")?
> >
> > > 5. Seems to be working just right. Even LAN LED turns off when I manu=
ally set
> > > eth0 interface down from shell.
> > >
> > > I also tested buttons which still work fine.
> > >
> > > Problem with link detection on eth0 which always reports interface as=
 UP with
> > > carrier even when there's nothing connected to switch remains unresol=
ved.
> > > I'd be willing to help with link detection but there already seems to=
 be some
> > > specific solution expected and I don't know what exactly is the expec=
ted way
> to
> > > solve it.
> > > So far ucidef_set_led_switch with port mask 0x0E can at least be used=
 as a
> > > workaround to make LAN LED show link detection on LAN ports (though t=
his
> also
> > > has negative impact on link activity visualisation).
> >
> > We will definitely have to use ucidef_set_led_switch here. Are you sure=
 about
> the port mask?
> >
> > I will update my staging tree with the current value.
> >
> > >
> > > Also the problem with unreliable boot causing LTE module to not alway=
s work
> > > after boot is still present. This can be workarounded by turning LTE =
module
> off
> > > and on again. I don't have this problem on ar71xx where LTE module al=
ways
> > > realiably works just fine after boot. Though Enrico reported that he =
has this
> > > problem even on ar71xx.
> >
> > Do you refer to something specific in the boot process when you say
> "unreliable boot", or is this just backed up by the observation of the no=
n-working
> LTE module? At the moment, this sounds to me like we could just put it in
> "Known issues". Can you provide a short piece of text for that (to be put=
 in the
> commit message)? Are there bug report/discussions to link?
> >
> > Best
> >
> > Adrian
> >
> > >
> > > Anyway good progress, thanks for your work.
> > >
> > > Filip
> > >
> > >
> > > On Mon, Jan 06, 2020 at 01:23:22AM +0100, mail@adrianschmutzler.de wr=
ote:
> > > > Hi Enrico,
> > > >
> > > > > -----Original Message-----
> > > > > From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
> > > > > Sent: Dienstag, 17. September 2019 19:59
> > > > > To: mail@adrianschmutzler.de
> > > > > Cc: Filip Moc <lede@moc6.cz>; openwrt-devel@lists.openwrt.org
> > > > > Subject: RE: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Li=
nk TL-
> > > > > MR6400
> > > > >
> > > > > Thanks! I'll take a look now.
> > > > > Still, something should be interestingly wrong here:
> > > > >
> > > > > root@OpenWrt:/# swconfig dev switch0 show|grep -i link
> > > > >          link: port:0 link:up speed:1000baseT full-duplex txflow =
rxflow
> > > > >          link: port:1 link:up speed:100baseT full-duplex auto
> > > > >          link: port:2 link:down
> > > > >          link: port:3 link:down
> > > > >          link: port:4 link:down
> > > > > root@OpenWrt:/#
> > > >
> > > > I've just unearthed this topic in my mailbox and tried a port mysel=
f based on
> > > your V2 patch.
> > > >
> > > > You will find the updated version in a branch of my staging repo he=
re:
> > > >
> > >
> https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3D=
refs/heads
> > > /mr6400
> > > >
> > > > (Most recent patch there.)
> > > >
> > > > Despite several minor issues (sorting, rebase, etc.) I've also addr=
essed the
> > > following major issues:
> > > > 1. Use gpio-export again instead of gpio-hog, so LTE can be switche=
d on/off
> > > > 2. Added adb-enablemodem
> > > > 3. Removed the phy-swap in DTS. This is not present in the mach-fil=
e for
> > > mr6400, only in the one for the fritzbox 4020 you took as blueprint.
> > > > 4. Adjusted ports 2 vs. 3 in 02_network based on your assessment. T=
his will
> > > most probably be wrong again now, as this might be influenced by the =
phy-
> swap.
> > > > 5. LAN/WAN LEDs still won't work properly, as at least one will nee=
d to be
> > > changed to ucidef_set_led_switch, and I cannot check that without the
> device.
> > > >
> > > > Best
> > > >
> > > > Adrian
> > >
>=20

--=-=hwc+ZxfiliMb0H=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4hptsACgkQoNyKO7qx
AnBdoBAArsdeuHx+KBYJqqpWZV07BLOA7o2AuJtUrBSyD9TIhZsf8gm7e4lM6Rkd
PVDuVUcqUzF992Xr2FF8LsaTPbag6fOMYwsuRBZTXr8UEvBdAaQG7j0aG3hUxmcE
CWhNvpoTf2kNa27q1iqT8ep3lF2Dou2pJmD308VQeYm6Panu2tKgYt+55x7jk9kw
LEVg1gsPvKiORMdUvwoO51UfSxZPtES/VfQYNae+vsJgVkyAd2H922piQKOHUmXu
VJgi4kEbE4aunMLQ5/fQcRILw4intlIPxn9a/Ryemh4ikB1Db2jzX+Z1mYVDKOAu
pJ+ZndY4NuPgOz8nbrNzgIiYXnfBplnU5+zvnbFVWqEmfkjn4wKpxvJz+FNAZSdT
xs+CRwsaSngRPXZa7XFnXsGXF375ptevV/9AZF5quCt5xXEaK1BQSItf4a3hUBvF
bGRde1eSYWMxCSOqiqyq1YF4wUU/LuqT5O12+UWl1iQjRvZWpst6G5Y2j7c5xFxS
oMmQF/5IKMI7hNG+ln38GG+Ji4YcciaRv2nPIBU70vd4zKRa2d48gc2ex53YcnP3
eZt4ZoxZzv1NfpWau5C2+Zlfq5H6O5DZ/K3DtzyPukjBim2/FBoMGGCsitM/DFyK
ojFagybm4r24ep8+qDZEzCnMfjKgCfLGHDpz5GCvWU3MGjru2ls=
=CVwR
-----END PGP SIGNATURE-----


--=-=hwc+ZxfiliMb0H=-=--



--===============0240081099761526633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0240081099761526633==--


