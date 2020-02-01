Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E7E14FA7D
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Feb 2020 21:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PkfiV+ZsOPeGh09tH3YnoxNenOQcMSkNm8XJBsJaKdQ=; b=KqgmVa+ofjYncA9Dws/qs1ZJN
	qazGa42YyDOkZqCyLceYZnueaUSneDUfZh0o5Tr/dN7KpuKZ0aohxCXfBos0N8tIXK8lEf1g1w0PW
	epS2a1VvKwGDTPMIObSj8JpRpZuChDAk/ZZCbk3woW+bAkzdawiAve43Gwbk4+gxRVffsDS4p1DKp
	FBecbr9GV0EglENUpyFP1nOaReLC0vmMOTJL6EDr9iDdqXPXdCdLncJ0pTT25WMkXIehevsB5HrMa
	lP3E5SxIVjHeeOEtF0hEv9QPy9wtI+tn/b6GKqJninKjpIVhc69NE4LkV2BfVeWXxxsAVzOR+fIyh
	JuuWRgh4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixz9i-00080Z-I3; Sat, 01 Feb 2020 20:14:14 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixz9Y-0007zz-SS
 for openwrt-devel@lists.openwrt.org; Sat, 01 Feb 2020 20:14:07 +0000
Received: by mail-qt1-x841.google.com with SMTP id d9so8263422qte.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 01 Feb 2020 12:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X7iwNToDCGr7/EXzKK9+xniqVBamsbui2OwE7pNNCbI=;
 b=L7UaG3vcpN8bhCyb0lZFeZjElkKfQLdy0r4FkgMUdfiZvt6ZufbdLMsWLbL8pRGLND
 XGkImZ+vKVxSpExJayKdAT3o0EIr0p0J3shKO6y/DgzSiJgEQTYRBFTJ4UbpuWs8y+J2
 ngubP/avHZ/VQ40PVsmSlBekksch0Nvd3WLCb/XBC2fp4yARwSRmgpDbhOEiNe6B7p4o
 m47Kpsh2wTmtqLg2QIiyi9q8y0ZTrx1q1XCSjdNUsVZVD7WhuhXRSk3vZHiFTHIoQIZX
 Dnz9RiloS0F9JlhSgt89XwMCXJ9r2FtLZ8gI1n+lWEQzyswl8F+nXWyGxQPGdn/aEf10
 G1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X7iwNToDCGr7/EXzKK9+xniqVBamsbui2OwE7pNNCbI=;
 b=Kk5PnBPiZarg8Rwtzz6p7KCIa0j/BNiKUWON/FXV5gPeNnnAjCEyjemETVG0AB8xqy
 P19gG4YVqe1Spi89cmF1gQ3YpDR0lbTK3mX8nZ2k2HmDtXsbb8YiCLrIuwRTWXJhSbZV
 Ypc4m/LA+OBJ3WHWoDDgZ97jWEDXDQ9IZktj7G40RbsdqIQDpSy6CtdFkjhDLn6YN9Yo
 mGxjl6ucFbp5XHTp+XiVSYO7Cv4Q0oQtWc6cdNfGnCfHt0QwJhiH0EqmKl3PYUdrfLQo
 Qu4WbfwSjvI2aDVjWlU7RjqA8b3oeBM9YjmI9+HeZxLo6CGQO0SmkJmGXAibOWozIg1R
 iFxA==
X-Gm-Message-State: APjAAAUJo1bCPqgDuKG8W55uPhi6t/lW+B03b1W4AA3QnWlhdcapmGoU
 fTlWdEZcr0R4vF8pYz1oPKTKyH4UB39GcDu6izp3jII8
X-Google-Smtp-Source: APXvYqw4NkRLd6KrgDVtB9Prkx6mtCJwHH9cY6I1lD20Ye5mSixTGx+Hpa1YwLN+QqZ1GzMulS5rQp9M2BIC1nYyE2Q=
X-Received: by 2002:ac8:7302:: with SMTP id x2mr10977619qto.375.1580588043741; 
 Sat, 01 Feb 2020 12:14:03 -0800 (PST)
MIME-Version: 1.0
References: <CACfEFw8s5k30Zp+u_o=qbXqeRBAHa7uEGQ9mzqRsd8TvbXYXaw@mail.gmail.com>
 <CACfEFw-pWFiSpumGYb81_7GEN0QLB7smWriSWrYX5yYGizAfCA@mail.gmail.com>
 <e1a92ceb-fe2b-26bb-5a69-9e57e3914db4@wwsnet.net>
In-Reply-To: <e1a92ceb-fe2b-26bb-5a69-9e57e3914db4@wwsnet.net>
From: Wes Turner <wes.turner@gmail.com>
Date: Sat, 1 Feb 2020 15:13:52 -0500
Message-ID: <CACfEFw8JwPwxgDar+obWwWj4Wmm+0FFvxGt=fEcA5B7i1+=UVA@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_121404_927610_CE0BC16D 
X-CRM114-Status: GOOD (  26.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
Subject: Re: [OpenWrt-Devel] RFI: OpenWRT Upgrade System; ENH,SEC suggestions
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
Content-Type: multipart/mixed; boundary="===============7164681721564215049=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7164681721564215049==
Content-Type: multipart/alternative; boundary="000000000000e22de2059d895400"

--000000000000e22de2059d895400
Content-Type: text/plain; charset="UTF-8"

Thanks for clarifying.

How can a user add a usign EdDSA ed25519 key for e.g. a self-hosted package
set?

https://openwrt.org/docs/guide-user/security/release_signatures links to
https://openwrt.org/docs/guide-user/security/keygen which describes how to
generate release signing keys with GPG and usign.

https://git.openwrt.org/project/usign.git

I would imagine that a firmware update check script would download a signed
JSON file; possibly with an ed25519 ld-signatures signature within the
record. You just just pop the proof key from the JSON before
[canonicalizing/sorting keys and] checking the hash and signature.
https://w3c-dvcg.github.io/ld-signatures/

It could just parse
https://downloads.openwrt.org/releases/ , but would that require semver to
sort and identify release candidates.

Ideally, it would link directly to the latest firmware download URLs for
the given target architecture.

YAML-LD that may be over-normalized:

releases:
  - version:
    security_release:
    archs:
    - architecture: x86
      models:
        - name: model105
          sysupgrade_url:
          firmware_url:
proof:
   type: Ed25519Signature2018
   proofPurpose: assertionMethod
   created: "2019-08-23T20:21:34Z"
   verificationMethod: "did:example:123456#key1"
    domain: "example.org"
    jws: "eyJ0eXAiOiJK...gFWFOEjXk"

It could be run as a periodic cron task that logs to syslog and caches to
/tmp for display with LuCI.

Config options:

updater.enabled: bool (True/False?)
updater.time_between_checks: cron ("24h"?)
updater.notify_webhook: URL ("")
updater.notify_email: email address ("")
updater.consider_nightlies: bool


IDK how much trouble it would be to generate such (ed25519 ld-signatures
JSON-LD) release manifests as a new step in the release workflow? Or how to
return target-specific firmware URLs for the LuCI notification.

People that are already considering testing nightlies may not be as likely
to be as out of date as folks with regular releases installed.

Thanks again for clarifying that there are ed25519 package signing public
keys baked into the firmware releases.

On Sat, Feb 1, 2020, 12:25 PM Jo-Philipp Wich <jo@mein.io> wrote:

> Hi Wes,
>
> > It's definitely an issue that the sha256 checksum check was broken.
> > But, can someone explain why a person who is MITM'ing ipk downloads
> > would change the package and not the checksum?
>
> the repository index files containing the SHA256 checksums are signed using
> usign, which is a derivate of the ECDSA based OpenBSD signify utility. The
> public ECDSA key is built into the firmware image and used to check the
> signify-signed repository index. Forging the index itself is not possible
> without possession of the secret key.
>
> > Are there GPG signatures of the package checksums signed with a key
> > that ships with the release?
>
> There are usign (signify) ECDSA ones.
>
> > Are package repos downloaded over HTTPS? Is there a CA bundle in the
> > release with which repo x.509 certs are validated?
>
> No since so far the required storage footprint for a functional SSL stack
> (library plus certs etc.) exceeded the available space on a large fraction
> of
> supported models.
>
> > The OpenWRT firmware couldn't access https sites without installing
> > multiple packages first. Then they had me install all the root certs
> > over an unencrypted connection. The opkg repos and install files are
> > all downloaded over http.
>
> Yes but they are (assuming fixed SHA256 issue) verified using preshared EC
> keys.
>
> 1) opkg downloads Packages.gz and Packages.sig, if either of these fail,
>    the repo is ignored
> 2) opkg verifies that the uncompressed contents of Packages.gz match the
>    Packages.sig signature using EC keys built into the image, if the
> signature
>    cannot be verified, the downloaded lists are deleted and the repo is
>    ignored
> 3) opkg translates package names to actual file names using the verified
>    package index information and downloads these .ipk files
> 4) opkg verifies that the size of the downloaded .ipk files match the size
>    mentioned in the verified package index information, if not the
> downloaded
>    package is deleted and the installation aborted
> 5) opkg computes the sha256 sums of the downloaded .ipk files and verifies
>    that they match the ones specified in the verified package index
>    information, if not the downloaded package is deleted and the
> installation
>    aborted [this step has been fixed]
> 6) opkg unpacks and installs the .ipk
>
> > With full seriousness, I really hope nobody expects operational
> > security using these routers.
>
> Depends on the thread model of course but without an encrypted transport
> channel, there'll be no confidentiality about the packages being installed,
> but [assuming a fixed opkg] it is not possible to modify the contents
> in-flight.
>
> > Side note: something like these would be great to have; IDK which
> > repos are appropriate for possible new issues to be owned by someone
> > who knows what is going on:
> >
> > ENH: CDN for package repos and latest version file
>
> We're in the process of testing cdn.openwrt.org which has been sponsored
> by
> KeyCDN but so far the results are mixed and we're having consistency
> issues yet.
>
> > ENH,SEC: firmware update check script
>
> Yeah, that would be good.
>
> > ENH,SEC: send an email when the firmware is out of date
>
> I don't see how this can be done reliably as most mails sent directly from
> dynamic dialup IPs are classified spam nowadays. Any other solution would
> require embedding secrets in the firmware images.
>
> > ENH,SEC: luci: display firmware update check result and link to latest
> firmware
>
> Yes, that would be useful.
>
> > ENH,SEC: add package repo (and firmware?) signing key to keyring
>
> They are.
>
> > ENH,SEC: include ca-certificates and/or openwrt-certificates in builds?
>
> That wasn't feasible so far due to the 4MB flash support target.
>
> HTH,
> Jo
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000e22de2059d895400
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks for clarifying.<div dir=3D"auto"><br></div><div di=
r=3D"auto">How can a user add a usign EdDSA ed25519 key for e.g. a self-hos=
ted package set?</div><div dir=3D"auto"><br></div><div dir=3D"auto"><a href=
=3D"https://openwrt.org/docs/guide-user/security/release_signatures">https:=
//openwrt.org/docs/guide-user/security/release_signatures</a> links to=C2=
=A0<a href=3D"https://openwrt.org/docs/guide-user/security/keygen">https://=
openwrt.org/docs/guide-user/security/keygen</a> which describes how to gene=
rate release signing keys with GPG and usign.<br></div><div dir=3D"auto"><b=
r></div><div dir=3D"auto"><a href=3D"https://git.openwrt.org/project/usign.=
git">https://git.openwrt.org/project/usign.git</a><br></div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">I would imagine that a firmware update check=
 script would download a signed JSON file; possibly with an ed25519 ld-sign=
atures signature within the record. You just just pop the proof key from th=
e JSON before [canonicalizing/sorting keys and] checking the hash and signa=
ture.</div><div dir=3D"auto"><a href=3D"https://w3c-dvcg.github.io/ld-signa=
tures/">https://w3c-dvcg.github.io/ld-signatures/</a><br></div><div dir=3D"=
auto"><br></div><div dir=3D"auto">It could just parse=C2=A0</div><div dir=
=3D"auto"><a href=3D"https://downloads.openwrt.org/releases/">https://downl=
oads.openwrt.org/releases/</a> , but would that require semver to sort and =
identify release candidates.<br></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Ideally, it would link directly to the latest firmware download U=
RLs for the given target architecture.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">YAML-LD that may be over-normalized:</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">releases:</div><div dir=3D"auto">=C2=A0 - versi=
on:</div><div dir=3D"auto">=C2=A0 =C2=A0 security_release:</div><div dir=3D=
"auto">=C2=A0 =C2=A0 archs:</div><div dir=3D"auto">=C2=A0 =C2=A0 - architec=
ture: x86</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 models:</div><div dir=
=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 - name: model105</div><div dir=3D"aut=
o">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sysupgrade_url:</div><div dir=3D"auto=
">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 firmware_url:</div><div dir=3D"auto">p=
roof:</div><div dir=3D"auto">=C2=A0 =C2=A0type:=C2=A0Ed25519Signature2018</=
div><div dir=3D"auto">=C2=A0 =C2=A0proofPurpose: assertionMethod</div><div =
dir=3D"auto">=C2=A0 =C2=A0created: &quot;2019-08-23T20:21:34Z&quot;</div><d=
iv dir=3D"auto">=C2=A0 =C2=A0verificationMethod: &quot;did:example:123456#k=
ey1&quot;</div><div dir=3D"auto">=C2=A0 =C2=A0 domain: &quot;<a href=3D"htt=
p://example.org">example.org</a>&quot;</div><div dir=3D"auto">=C2=A0 =C2=A0=
 jws: &quot;eyJ0eXAiOiJK...gFWFOEjXk&quot;</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">It could be run as a periodic cron task that logs to sys=
log and caches to /tmp for display with LuCI.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Config options:</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">updater.enabled: bool (True/False?)</div><div dir=3D"auto">up=
dater.time_between_checks: cron (&quot;24h&quot;?)</div><div dir=3D"auto">u=
pdater.notify_webhook: URL (&quot;&quot;)</div><div dir=3D"auto">updater.no=
tify_email: email address (&quot;&quot;)</div><div dir=3D"auto">updater.con=
sider_nightlies: bool</div><div dir=3D"auto"><br></div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">IDK how much trouble it would be to generate such=
 (ed25519 ld-signatures JSON-LD) release manifests as a new step in the rel=
ease workflow? Or how to return target-specific firmware URLs for the LuCI =
notification.</div><div dir=3D"auto"><br></div>People that are already cons=
idering testing nightlies may not be as likely to be as out of date as folk=
s with regular releases installed.<div dir=3D"auto"><br></div><div dir=3D"a=
uto">Thanks again for clarifying that there are ed25519 package signing pub=
lic keys baked into the firmware releases.<br><br><div class=3D"gmail_quote=
" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 1, 2020, 1=
2:25 PM Jo-Philipp Wich &lt;<a href=3D"mailto:jo@mein.io">jo@mein.io</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Wes,<br>
<br>
&gt; It&#39;s definitely an issue that the sha256 checksum check was broken=
.<br>
&gt; But, can someone explain why a person who is MITM&#39;ing ipk download=
s<br>
&gt; would change the package and not the checksum?<br>
<br>
the repository index files containing the SHA256 checksums are signed using=
<br>
usign, which is a derivate of the ECDSA based OpenBSD signify utility. The<=
br>
public ECDSA key is built into the firmware image and used to check the<br>
signify-signed repository index. Forging the index itself is not possible<b=
r>
without possession of the secret key.<br>
<br>
&gt; Are there GPG signatures of the package checksums signed with a key<br=
>
&gt; that ships with the release?<br>
<br>
There are usign (signify) ECDSA ones.<br>
<br>
&gt; Are package repos downloaded over HTTPS? Is there a CA bundle in the<b=
r>
&gt; release with which repo x.509 certs are validated?<br>
<br>
No since so far the required storage footprint for a functional SSL stack<b=
r>
(library plus certs etc.) exceeded the available space on a large fraction =
of<br>
supported models.<br>
<br>
&gt; The OpenWRT firmware couldn&#39;t access https sites without installin=
g<br>
&gt; multiple packages first. Then they had me install all the root certs<b=
r>
&gt; over an unencrypted connection. The opkg repos and install files are<b=
r>
&gt; all downloaded over http.<br>
<br>
Yes but they are (assuming fixed SHA256 issue) verified using preshared EC =
keys.<br>
<br>
1) opkg downloads Packages.gz and Packages.sig, if either of these fail,<br=
>
=C2=A0 =C2=A0the repo is ignored<br>
2) opkg verifies that the uncompressed contents of Packages.gz match the<br=
>
=C2=A0 =C2=A0Packages.sig signature using EC keys built into the image, if =
the signature<br>
=C2=A0 =C2=A0cannot be verified, the downloaded lists are deleted and the r=
epo is<br>
=C2=A0 =C2=A0ignored<br>
3) opkg translates package names to actual file names using the verified<br=
>
=C2=A0 =C2=A0package index information and downloads these .ipk files<br>
4) opkg verifies that the size of the downloaded .ipk files match the size<=
br>
=C2=A0 =C2=A0mentioned in the verified package index information, if not th=
e downloaded<br>
=C2=A0 =C2=A0package is deleted and the installation aborted<br>
5) opkg computes the sha256 sums of the downloaded .ipk files and verifies<=
br>
=C2=A0 =C2=A0that they match the ones specified in the verified package ind=
ex<br>
=C2=A0 =C2=A0information, if not the downloaded package is deleted and the =
installation<br>
=C2=A0 =C2=A0aborted [this step has been fixed]<br>
6) opkg unpacks and installs the .ipk<br>
<br>
&gt; With full seriousness, I really hope nobody expects operational<br>
&gt; security using these routers.<br>
<br>
Depends on the thread model of course but without an encrypted transport<br=
>
channel, there&#39;ll be no confidentiality about the packages being instal=
led,<br>
but [assuming a fixed opkg] it is not possible to modify the contents in-fl=
ight.<br>
<br>
&gt; Side note: something like these would be great to have; IDK which<br>
&gt; repos are appropriate for possible new issues to be owned by someone<b=
r>
&gt; who knows what is going on:<br>
&gt; <br>
&gt; ENH: CDN for package repos and latest version file<br>
<br>
We&#39;re in the process of testing <a href=3D"http://cdn.openwrt.org" rel=
=3D"noreferrer noreferrer" target=3D"_blank">cdn.openwrt.org</a> which has =
been sponsored by<br>
KeyCDN but so far the results are mixed and we&#39;re having consistency is=
sues yet.<br>
<br>
&gt; ENH,SEC: firmware update check script<br>
<br>
Yeah, that would be good.<br>
<br>
&gt; ENH,SEC: send an email when the firmware is out of date<br>
<br>
I don&#39;t see how this can be done reliably as most mails sent directly f=
rom<br>
dynamic dialup IPs are classified spam nowadays. Any other solution would<b=
r>
require embedding secrets in the firmware images.<br>
<br>
&gt; ENH,SEC: luci: display firmware update check result and link to latest=
 firmware<br>
<br>
Yes, that would be useful.<br>
<br>
&gt; ENH,SEC: add package repo (and firmware?) signing key to keyring<br>
<br>
They are.<br>
<br>
&gt; ENH,SEC: include ca-certificates and/or openwrt-certificates in builds=
?<br>
<br>
That wasn&#39;t feasible so far due to the 4MB flash support target.<br>
<br>
HTH,<br>
Jo<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" rel=3D=
"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div></div></div>

--000000000000e22de2059d895400--


--===============7164681721564215049==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7164681721564215049==--

