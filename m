Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491D2196A0A
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Mar 2020 00:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qdCN3Z2pe1ah9lN70Uf9NyWvqdlTOg+3ogL9WR/uc7Y=; b=ozS
	nEPZ+KxqnBtL4x7dFZ9Qmg7ELNEYmzgNkdMkcmU3flHa/XPVWb2YqP9YY2atEtg3OhdAkB28HYwH4
	4hobWiYAbGT+EnTHB1mnjsFZf1PcJXBPLJUv/t6YkoXZwrRNrGOShl9YBz2LFeJ+DbrRZM2LfTucj
	4DMxLJogUrJ7lXAAMiP6FeJ55JPKD6CwiMkogA8nHk4qIy2hJvDo2C1w+Gz+e8ZrMT1ZOSqxBex/g
	XAdh0iWRBC9rBM2DSaU2s2u1d6T9zhhmvG8IE98jVPeW1BpYiU2BAt20VM9hO9dZm9EkjSIFm1Azr
	bhu5kVoXQ/7n4V+aYVKPAYVz//UP8vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIKkY-0004Q7-7j; Sat, 28 Mar 2020 23:20:22 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIKkR-0004Pa-2c
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 23:20:16 +0000
Received: by mail-il1-x12b.google.com with SMTP id r5so12330209ilq.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Mar 2020 16:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zenotec-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=+r0Q3FDk8WkZGrmSL50VgtB5R523wyTllce3ZjRERd4=;
 b=Zpcko51nT0zrRLvkk6WvgnAm/Pg5LYNA0fE+llhfz4h07a9hgaBIeJRZRV8EWihroD
 e1mQjo0mZNcgm8M7v9h/wTuhFHQJAqGkQ5nYJInmSk07yZUIjfFrB8zmsVbJMdYG+ni2
 vHLWzFogMw69oKVttPoSPXzSSiB3g9izYsY0ujMS2HHrxJ+HqGNys1lri/641GDBEJyL
 mUYAoykcdoYit5b2ULrUM857IE67UbmoHs9NosxcqKm6idqmaKlad4KVxDFgcWdPbMQI
 16i01+6eSKouOvplR0A/7NDj3eoeQp3vEPW9ydY8yUAI1G+Rk03+pTywyMALqf20dEjr
 zpfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=+r0Q3FDk8WkZGrmSL50VgtB5R523wyTllce3ZjRERd4=;
 b=qBoOB0XQevTYadDZ2FxeRpMpdZnrvxTTpngGyIhyvYBXrY0I6HUZR7V3aeFV3giBw3
 +jZSNX3eb26XYSBVTH4vXDcqpa82/wWTIU+sG7LmFcR0arJPvjgzedvXdIluIiAkwSI/
 FcJKg7ckMitbdY/1JAzHhbPGPfuu8JrvVw0Z7tnpEvDho85xaIk/RkCip9FsJeMKNofw
 HXCkBYLFw6LbT8I5sowjxhRNesmxPd8sDbwgHggysdc1EyBHJHUpNcnGFGYg4aPkEfq+
 yPDgOoCnhEAivyIMMJ99RUdOS6lvXTbcJJ3UwFZ1wjlB4YweB4SxGppkTT2Jfs12T6dU
 Hyiw==
X-Gm-Message-State: ANhLgQ1T6GZ2FaUxWZ1VC1eM/0HsiN16ijIn+SLgYtuAkcAJQfpdUOPw
 llLnpNdhcwK3J5O6XrifIkB0Nw6ZFPb7xyfxTp/XBCwj7jY=
X-Google-Smtp-Source: ADFU+vsSOnUD64wqIUd2XfopFDGOo0SQeronaBOXqbky/jm+y5D6pIImOsCckoYLCSmfI4f/4ng30WUpup6MUDkrMMk=
X-Received: by 2002:a92:8c0b:: with SMTP id o11mr5279266ild.135.1585437610564; 
 Sat, 28 Mar 2020 16:20:10 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Mahoney <kevin.mahoney@zenotec.net>
Date: Sat, 28 Mar 2020 17:20:02 -0600
Message-ID: <CAEKKVUgGOtty+M2mvTi5nbsFG2MeBoZKpU6sxJZNKfRS_P=DQA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_162015_185030_5F2282AD 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] libuci help
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
Content-Type: multipart/mixed; boundary="===============7306105965675954527=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7306105965675954527==
Content-Type: multipart/alternative; boundary="0000000000009773d505a1f2750d"

--0000000000009773d505a1f2750d
Content-Type: text/plain; charset="UTF-8"

I've written a userspace manager that gets configuration from the cloud and
pushes it to the device. The manager receives this config which includes
things like network interfaces and wireless interfaces. I take that
information and create the package sections for the wireless interface then
save, commit, and reload the network. I've gotten everything to work minus
one "feature" that I am struggling with. The wireless interface section I
create, I need it named the same as the wireless interface name instead of
the generic name that is auto-assigned. So I create the section then
immediately rename it. I then add the various options and then go to save
and commit the changes. This is where the "feature" causes a second section
with the same name as the originally auto-assigned section name gets
created. For some reason, it shows up in "pkg->saved_delta" after the
commit returns. The config file then contains the new section I created
with all the options properly set and a second but empty section with the
original auto-assigned name. Below is more information including a code
snippet that exhibits the "feature". Is this behavior expected? If so, is
there any workaround?

The contents of /tmp/.uci/wireless just before the commit is:

cat /tmp/.uci/wireless
+wireless.cfg033579='wifi-iface'
@wireless.cfg033579='home-ap-50'
wireless.home-ap-50.ifname='home-ap-50'
wireless.home-ap-50.device='wifi0'
wireless.home-ap-50.disabled='0'
wireless.home-ap-50.mode='ap'
wireless.home-ap-50.ssid='OpenWrt'
wireless.home-ap-50.network='lan'
wireless.home-ap-50.hidden='0'
wireless.home-ap-50.encryption='none'


To recreate just run the following:

struct uci_section*
openwrt_uci_add_named_section(const char* pkgname, const char* section)
{
    static struct uci_context* ctx = NULL;
    struct uci_package* p = NULL;
    struct uci_section* s = NULL;
    struct uci_ptr ptr = { 0 };

   // Allocate a new context if this is the first time through
    if (!ctx && (ctx = uci_alloc_context()) == NULL)
        return NULL;

    // Lookup package
    p = uci_lookup_package(ctx, pkgname);

    // Load package if it wasn't already loaded
    if (!p && uci_load(ctx, pkgname, &p))
        return NULL;

    // Check if the section already exists and return immediately
    s = uci_lookup_section(p->ctx, p, section);
    if (s != NULL)
        return s;

    // Add new section; note: section is not named
    ret = uci_add_section(p->ctx, p, type, &s);
    if (ret != UCI_OK)
        return NULL;

    // Rename section from its auto-assigned name
    ptr.p = p;
    ptr.s = s;
    ptr.value = name;
    ret = uci_rename(p->ctx, &ptr);
    if (ret != UCI_OK)
        return NULL;

    // Save the section
    if (uci_save(p->ctx, p) != UCI_OK)
        return NULL;

    // Commit the config (note: writes out to package file)
    if (uci_commit(p->ctx, &p, true) != UCI_OK)
        return NULL;

    return s;

}

The contents of /tmp/.uci/wireless just before the commit is:

cat /tmp/.uci/wireless
+wireless.cfg033579='wifi-iface'
@wireless.cfg033579='home-ap-50'
wireless.home-ap-50.ifname='home-ap-50'
wireless.home-ap-50.device='phy0'
wireless.home-ap-50.disabled='0'
wireless.home-ap-50.mode='ap'
wireless.home-ap-50.ssid='OpenWrt'
wireless.home-ap-50.network='lan'
wireless.home-ap-50.hidden='0'
wireless.home-ap-50.encryption='none'


Kevin Mahoney

--0000000000009773d505a1f2750d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve written a userspace manager that gets configurati=
on from the cloud and pushes it to the device. The manager receives this co=
nfig which includes things like network interfaces and wireless interfaces.=
 I take that information and create the package sections for the wireless i=
nterface then save, commit, and reload the network. I&#39;ve gotten everyth=
ing to work minus one &quot;feature&quot; that I am struggling with. The wi=
reless interface section I create, I need it named the same as the wireless=
 interface name instead of the generic name that is auto-assigned. So I cre=
ate the section then immediately rename it. I then add the various options =
and then go to save and commit the changes. This is where the &quot;feature=
&quot; causes a second section with the same name as the originally auto-as=
signed section name gets created. For some reason, it shows up in &quot;pkg=
-&gt;saved_delta&quot; after the commit returns. The config file then conta=
ins the new section I created with all the options properly set and a secon=
d but empty section with the original auto-assigned name. Below is more inf=
ormation including a code snippet that exhibits the &quot;feature&quot;. Is=
 this behavior expected? If so, is there any workaround?=C2=A0<br><br>The c=
ontents of /tmp/.uci/wireless just before the commit is:<br><br><div><font =
face=3D"monospace">cat /tmp/.uci/wireless<br>+wireless.cfg033579=3D&#39;wif=
i-iface&#39;<br>@wireless.cfg033579=3D&#39;home-ap-50&#39;<br>wireless.home=
-ap-50.ifname=3D&#39;home-ap-50&#39;<br>wireless.home-ap-50.device=3D&#39;w=
ifi0&#39;<br>wireless.home-ap-50.disabled=3D&#39;0&#39;<br>wireless.home-ap=
-50.mode=3D&#39;ap&#39;<br>wireless.home-ap-50.ssid=3D&#39;OpenWrt&#39;<br>=
wireless.home-ap-50.network=3D&#39;lan&#39;<br>wireless.home-ap-50.hidden=
=3D&#39;0&#39;<br>wireless.home-ap-50.encryption=3D&#39;none&#39;<br></font=
><br><br>To recreate just run the following:<br><br><font face=3D"monospace=
">struct uci_section*<br>openwrt_uci_add_named_section(const char* pkgname,=
 const char* section)<br>{<br>=C2=A0 =C2=A0 static struct uci_context* ctx =
=3D NULL;<br>=C2=A0 =C2=A0 struct uci_package* p =3D NULL;<br>=C2=A0 =C2=A0=
 struct uci_section* s =3D NULL;<br>=C2=A0 =C2=A0 struct uci_ptr ptr =3D { =
0 };<br><br>=C2=A0 =C2=A0// Allocate a new context if this is the first tim=
e through<br>=C2=A0 =C2=A0 if (!ctx &amp;&amp; (ctx =3D uci_alloc_context()=
) =3D=3D NULL)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br><br>=C2=A0 =
=C2=A0 // Lookup package<br>=C2=A0 =C2=A0 p =3D uci_lookup_package(ctx, pkg=
name);<br><br>=C2=A0 =C2=A0 // Load package if it wasn&#39;t already loaded=
<br>=C2=A0 =C2=A0 if (!p &amp;&amp; uci_load(ctx, pkgname, &amp;p))<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br><br>=C2=A0 =C2=A0 // Check if the =
section already exists and return immediately<br>=C2=A0 =C2=A0 s =3D uci_lo=
okup_section(p-&gt;ctx, p, section);<br>=C2=A0 =C2=A0 if (s !=3D NULL)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return s;<br><br>=C2=A0 =C2=A0 // Add new secti=
on; note: section is not named<br>=C2=A0 =C2=A0 ret =3D uci_add_section(p-&=
gt;ctx, p, type, &amp;s);<br>=C2=A0 =C2=A0 if (ret !=3D UCI_OK)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return NULL;<br><br>=C2=A0 =C2=A0 // Rename section fr=
om its auto-assigned name<br>=C2=A0 =C2=A0 ptr.p =3D p;<br>=C2=A0 =C2=A0 pt=
r.s =3D s;<br>=C2=A0 =C2=A0 ptr.value =3D name;<br>=C2=A0 =C2=A0 ret =3D uc=
i_rename(p-&gt;ctx, &amp;ptr);<br>=C2=A0 =C2=A0 if (ret !=3D UCI_OK)<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br><br>=C2=A0 =C2=A0 // Save the sect=
ion<br>=C2=A0 =C2=A0 if (uci_save(p-&gt;ctx, p) !=3D UCI_OK)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 return NULL;<br><br>=C2=A0 =C2=A0 // Commit the config (n=
ote: writes out to package file)<br>=C2=A0 =C2=A0 if (uci_commit(p-&gt;ctx,=
 &amp;p, true) !=3D UCI_OK)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>=
<br>=C2=A0 =C2=A0 return s;<br><br>}</font><br><br>The contents of /tmp/.uc=
i/wireless just before the commit is:<br><br><div><font face=3D"monospace">=
cat /tmp/.uci/wireless<br>+wireless.cfg033579=3D&#39;wifi-iface&#39;<br>@wi=
reless.cfg033579=3D&#39;home-ap-50&#39;<br>wireless.home-ap-50.ifname=3D&#3=
9;home-ap-50&#39;<br>wireless.home-ap-50.device=3D&#39;phy0&#39;<br>wireles=
s.home-ap-50.disabled=3D&#39;0&#39;<br>wireless.home-ap-50.mode=3D&#39;ap&#=
39;<br>wireless.home-ap-50.ssid=3D&#39;OpenWrt&#39;<br>wireless.home-ap-50.=
network=3D&#39;lan&#39;<br>wireless.home-ap-50.hidden=3D&#39;0&#39;<br>wire=
less.home-ap-50.encryption=3D&#39;none&#39;<br></font></div><div><br></div>=
<div><br></div>Kevin Mahoney<br><br></div></div>

--0000000000009773d505a1f2750d--


--===============7306105965675954527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7306105965675954527==--

